module Wiki
  class MenuItemsGenerator < Jekyll::Generator
    # indicates which layout to store the menu items in,
    # inherited layouts do NOT have access the items, so 
    # this should be whatever layout that includes dynamic-menu.html
    GenerateMenuForLayout = "wiki"
    # indicates the Hash key which the menu items can be accessed with
    MenuItemsKey = "menu_items"

    # Generates the menu_item Hash.
    #
    # The hash looks like:
    #   {
    #     "name" => <Document Title>,
    #     "url"  => <Document URL>,
    #     "subitems" => {
    #       <sub-category-1> => { ... },
    #       <sub-category-2> => { ... },
    #       ...
    #     }
    #   }
    def generate(site)
      # sorts documents by their url, i.e. permalink,
      # because the order items appear in the menu is designed to
      # depend on their order sorted by permalink.
      sorted_docs = site.collections["wiki"].docs
                        .sort_by(&:url)
      layout = site.layouts[GenerateMenuForLayout]

      top_level_item = Hash.new

      # each document has a menu item associated to it
      for doc in sorted_docs
        # Hash to be inserted into menu_items
        item_data = {
          "name" => "#{doc.data["title"]}",
          "url"  => "#{doc.url}",
          "layout" => doc.data["layout"],
          "subitems" => Hash.new
        }

        # find where to insert item_data,
        # for each category, go one level deeper,
        curr_level = top_level_item
        for category in doc.data["categories"]
          # if the category key doesn't exist in the subitems Hash,
          # then this iteration must be creating that entry
          # (or there is a missing index.md which will result in 
          # an empty name and url for that category in the menu)
          curr_level = curr_level["subitems"][category] ||= Hash.new
        end 

        if not curr_level.key? "subitems"
          # if there is no subitems in the hash, this is a newly created Hash,
          # so this document must be an index document for that category that
          # contains metadata
          curr_level.replace(item_data)
        else
          # otherwise, this is a document in that category,
          # so it should be a subitem of that category
          curr_level["subitems"][doc.data["title"]] = item_data
        end
      end

      # make the items available to the layout
      layout.data[MenuItemsKey] = { "" => top_level_item }
      # or if you don't want the top level to appear in the menu,
      #
      #   layout.data[MenuItemsKey] = top_level_item["subitems"]
      #
      # The top level item is the root of the wiki collection
    end
  end
end
