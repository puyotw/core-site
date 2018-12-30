require 'pathname';

# This hook adds subdirectories of the wiki collection as the categories of the
# current wiki page. This assumes directory structure like _wiki/C1/C2/C3/page.md.
Jekyll::Hooks.register :wiki, :post_init do |wiki|
    # Choosing post_init hook because categories are typically populated
    # during init time(refer to Jekyll Document class code).
    # This is the soonest possible time to properly populate categories.

    # absolute path to _wiki directory on the system
    collection_root = Pathname.new(wiki.collection.directory)
    # absolute path to the currect wiki Markdown file
    wiki_file_path = Pathname.new(wiki.path)
    # Directories to be considered as categories.
    # For example, in case of _wiki/C1/C2/C3/page.md, C1/C2/C3 should be considered.
    #
    # In case of _wiki/page.md, this yields ./ and therefore we need to exclude a
    # category of '.' later; this also means such pages won't have categories.
    category_dirs = wiki_file_path.relative_path_from(collection_root).dirname

    wiki.data['categories'] = category_dirs.to_s
                              .split(File::SEPARATOR)
                              .reject do |dir| dir == '.' end
end
