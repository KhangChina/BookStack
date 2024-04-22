<?php
/**
 * Text used for 'Entities' (Document Structure Elements) such as
 * Books, Shelves, Chapters & Pages
 */
return [

    // Shared
    'recently_created' => 'Nyligt oprettet',
    'recently_created_pages' => 'Nyligt oprettede sider',
    'recently_updated_pages' => 'Nyligt opdaterede sider',
    'recently_created_chapters' => 'Nyligt oprettede kapitler',
    'recently_created_books' => 'Nyligt oprettede bøger',
    'recently_created_shelves' => 'Nyligt oprettede reoler',
    'recently_update' => 'Opdateret for nyligt',
    'recently_viewed' => 'Senest viste',
    'recent_activity' => 'Seneste aktivitet',
    'create_now' => 'Opret en nu',
    'revisions' => 'Revisioner',
    'meta_revision' => 'Revision #:revisionCount',
    'meta_created' => 'Oprettet :timeLength',
    'meta_created_name' => 'Oprettet :timeLength af :user',
    'meta_updated' => 'Opdateret :timeLength',
    'meta_updated_name' => 'Opdateret :timeLength af :user',
    'meta_owned_name' => 'Ejet af :user',
    'meta_reference_count' => 'Referenced by :count item|Referenced by :count items',
    'entity_select' => 'Vælg emne',
    'entity_select_lack_permission' => 'You don\'t have the required permissions to select this item',
    'images' => 'Billeder',
    'my_recent_drafts' => 'Mine seneste kladder',
    'my_recently_viewed' => 'Mine senest viste',
    'my_most_viewed_favourites' => 'Mine mest viste favoritter',
    'my_favourites' => 'Mine favoritter',
    'no_pages_viewed' => 'Du har ikke besøgt nogle sider',
    'no_pages_recently_created' => 'Ingen sider er blevet oprettet for nyligt',
    'no_pages_recently_updated' => 'Ingen sider er blevet opdateret for nyligt',
    'export' => 'Exporter',
    'export_html' => 'Indeholdt webfil',
    'export_pdf' => 'PDF-fil',
    'export_text' => 'Almindelig tekstfil',
    'export_md' => 'Markdown Fil',
    'default_template' => 'Default Page Template',
    'default_template_explain' => 'Assign a page template that will be used as the default content for all pages created within this item. Keep in mind this will only be used if the page creator has view access to the chosen template page.',
    'default_template_select' => 'Select a template page',

    // Permissions and restrictions
    'permissions' => 'Rettigheder',
    'permissions_desc' => 'Set permissions here to override the default permissions provided by user roles.',
    'permissions_book_cascade' => 'Permissions set on books will automatically cascade to child chapters and pages, unless they have their own permissions defined.',
    'permissions_chapter_cascade' => 'Permissions set on chapters will automatically cascade to child pages, unless they have their own permissions defined.',
    'permissions_save' => 'Gem tilladelser',
    'permissions_owner' => 'Ejer',
    'permissions_role_everyone_else' => 'Everyone Else',
    'permissions_role_everyone_else_desc' => 'Set permissions for all roles not specifically overridden.',
    'permissions_role_override' => 'Override permissions for role',
    'permissions_inherit_defaults' => 'Inherit defaults',

    // Search
    'search_results' => 'Søgeresultater',
    'search_total_results_found' => ':count resultat fundet|:count resultater fundet',
    'search_clear' => 'Ryd søgning',
    'search_no_pages' => 'Ingen sider matchede søgning',
    'search_for_term' => 'Søgning for :term',
    'search_more' => 'Flere resultater',
    'search_advanced' => 'Avanceret søgning',
    'search_terms' => 'Søgeord',
    'search_content_type' => 'Indholdstype',
    'search_exact_matches' => 'Nøjagtige matches',
    'search_tags' => 'Tagsøgninger',
    'search_options' => 'Indstillinger',
    'search_viewed_by_me' => 'Set af mig',
    'search_not_viewed_by_me' => 'Ikke set af mig',
    'search_permissions_set' => 'Rettigheders sæt',
    'search_created_by_me' => 'Oprettet af mig',
    'search_updated_by_me' => 'Opdateret af mig',
    'search_owned_by_me' => 'Ejet af mig',
    'search_date_options' => 'Datoindstillinger',
    'search_updated_before' => 'Opdateret før',
    'search_updated_after' => 'Opdateret efter',
    'search_created_before' => 'Oprettet før',
    'search_created_after' => 'Oprettet efter',
    'search_set_date' => 'Sæt dato',
    'search_update' => 'Opdatér søgning',

    // Shelves
    'shelf' => 'Reol',
    'shelves' => 'Reoler',
    'x_shelves' => ':count reol|:count reoler',
    'shelves_empty' => 'Ingen reoler er blevet oprettet',
    'shelves_create' => 'Opret ny reol',
    'shelves_popular' => 'Populære reoler',
    'shelves_new' => 'Nye reoler',
    'shelves_new_action' => 'Ny reol',
    'shelves_popular_empty' => 'De mest populære reoler vil blive vist her.',
    'shelves_new_empty' => 'De nyeste reoler vil blive vist her.',
    'shelves_save' => 'Gem reol',
    'shelves_books' => 'Bøger på denne reol',
    'shelves_add_books' => 'Tilføj bøger til denne reol',
    'shelves_drag_books' => 'Drag books below to add them to this shelf',
    'shelves_empty_contents' => 'Denne reol har ingen bøger tilknyttet til den',
    'shelves_edit_and_assign' => 'Rediger reol for at tilføje bøger',
    'shelves_edit_named' => 'Edit Shelf :name',
    'shelves_edit' => 'Edit Shelf',
    'shelves_delete' => 'Delete Shelf',
    'shelves_delete_named' => 'Delete Shelf :name',
    'shelves_delete_explain' => "This will delete the shelf with the name ':name'. Contained books will not be deleted.",
    'shelves_delete_confirmation' => 'Are you sure you want to delete this shelf?',
    'shelves_permissions' => 'Shelf Permissions',
    'shelves_permissions_updated' => 'Shelf Permissions Updated',
    'shelves_permissions_active' => 'Shelf Permissions Active',
    'shelves_permissions_cascade_warning' => 'Permissions on shelves do not automatically cascade to contained books. This is because a book can exist on multiple shelves. Permissions can however be copied down to child books using the option found below.',
    'shelves_permissions_create' => 'Shelf create permissions are only used for copying permissions to child books using the action below. They do not control the ability to create books.',
    'shelves_copy_permissions_to_books' => 'Kopier tilladelser til bøger',
    'shelves_copy_permissions' => 'Kopier tilladelser',
    'shelves_copy_permissions_explain' => 'This will apply the current permission settings of this shelf to all books contained within. Before activating, ensure any changes to the permissions of this shelf have been saved.',
    'shelves_copy_permission_success' => 'Shelf permissions copied to :count books',

    // Books
    'book' => 'Bog',
    'books' => 'Bøger',
    'x_books' => ':count bog|:count bøger',
    'books_empty' => 'Ingen bøger er blevet oprettet',
    'books_popular' => 'Populære bøger',
    'books_recent' => 'Nylige bøger',
    'books_new' => 'Nye bøger',
    'books_new_action' => 'Ny bog',
    'books_popular_empty' => 'De mest populære bøger vil blive vist her.',
    'books_new_empty' => 'De nyeste boger vil blive vist her.',
    'books_create' => 'Lav en ny bog',
    'books_delete' => 'Slet bog',
    'books_delete_named' => 'Slet bog :bookName',
    'books_delete_explain' => 'Dette vil slette bogen ved navn \':bookName\'. Alle sider og kapitler vil blive slettet.',
    'books_delete_confirmation' => 'Er du sikker på at du vil slette denne bog?',
    'books_edit' => 'Rediger bog',
    'books_edit_named' => 'Rediger bog :bookName',
    'books_form_book_name' => 'Bognavn',
    'books_save' => 'Gem bog',
    'books_permissions' => 'Bogtilladelser',
    'books_permissions_updated' => 'Bogtilladelser opdateret',
    'books_empty_contents' => 'Ingen sider eller kapitler er blevet oprettet i denne bog.',
    'books_empty_create_page' => 'Opret en ny side',
    'books_empty_sort_current_book' => 'Sortér denne bog',
    'books_empty_add_chapter' => 'Tilføj et kapitel',
    'books_permissions_active' => 'Aktive bogtilladelser',
    'books_search_this' => 'Søg i denne bog',
    'books_navigation' => 'Bognavigation',
    'books_sort' => 'Sorter bogindhold',
    'books_sort_desc' => 'Move chapters and pages within a book to reorganise its contents. Other books can be added which allows easy moving of chapters and pages between books.',
    'books_sort_named' => 'Sorter bog :bookName',
    'books_sort_name' => 'Sortér efter navn',
    'books_sort_created' => 'Sortér efter oprettelsesdato',
    'books_sort_updated' => 'Sortér efter opdateringsdato',
    'books_sort_chapters_first' => 'Kapitler først',
    'books_sort_chapters_last' => 'Kapitler sidst',
    'books_sort_show_other' => 'Vis andre bøger',
    'books_sort_save' => 'Gem ny ordre',
    'books_sort_show_other_desc' => 'Add other books here to include them in the sort operation, and allow easy cross-book reorganisation.',
    'books_sort_move_up' => 'Move Up',
    'books_sort_move_down' => 'Move Down',
    'books_sort_move_prev_book' => 'Move to Previous Book',
    'books_sort_move_next_book' => 'Move to Next Book',
    'books_sort_move_prev_chapter' => 'Move Into Previous Chapter',
    'books_sort_move_next_chapter' => 'Move Into Next Chapter',
    'books_sort_move_book_start' => 'Move to Start of Book',
    'books_sort_move_book_end' => 'Move to End of Book',
    'books_sort_move_before_chapter' => 'Move to Before Chapter',
    'books_sort_move_after_chapter' => 'Move to After Chapter',
    'books_copy' => 'Kopier Bog',
    'books_copy_success' => 'Bogen blev kopieret',

    // Chapters
    'chapter' => 'Kapitel',
    'chapters' => 'Kapitler',
    'x_chapters' => ':count kapitel|:count kapitler',
    'chapters_popular' => 'Populære kapitler',
    'chapters_new' => 'Nyt kapitel',
    'chapters_create' => 'Opret nyt kapitel',
    'chapters_delete' => 'Slet kapitel',
    'chapters_delete_named' => 'Slet kapitel :chapterName',
    'chapters_delete_explain' => 'Dette vil slette kapitlet med navnet \':chapterName\'. Alle sider i dette kapitel vil også blive slettet.',
    'chapters_delete_confirm' => 'Er du sikker på du vil slette dette kapitel?',
    'chapters_edit' => 'Rediger kapitel',
    'chapters_edit_named' => 'Rediger kapitel :chapterName',
    'chapters_save' => 'Gem kapitel',
    'chapters_move' => 'Flyt kapitel',
    'chapters_move_named' => 'Flyt kapitel :chapterName',
    'chapters_copy' => 'Kopier Kapitel',
    'chapters_copy_success' => 'Kapitlet blev kopieret',
    'chapters_permissions' => 'Kapiteltilladelser',
    'chapters_empty' => 'Der er lige nu ingen sider i dette kapitel.',
    'chapters_permissions_active' => 'Aktive kapiteltilladelser',
    'chapters_permissions_success' => 'Kapiteltilladelser opdateret',
    'chapters_search_this' => 'Søg i dette kapitel',
    'chapter_sort_book' => 'Sort Book',

    // Pages
    'page' => 'Side',
    'pages' => 'Sider',
    'x_pages' => ':count Side|:count Sider',
    'pages_popular' => 'Populære sider',
    'pages_new' => 'Ny side',
    'pages_attachments' => 'Vedhæftninger',
    'pages_navigation' => 'Sidenavigation',
    'pages_delete' => 'Slet side',
    'pages_delete_named' => 'Slet side :pageName',
    'pages_delete_draft_named' => 'Slet kladdesidde :pageName',
    'pages_delete_draft' => 'Slet kladdeside',
    'pages_delete_success' => 'Side slettet',
    'pages_delete_draft_success' => 'Kladdeside slettet',
    'pages_delete_warning_template' => 'This page is in active use as a book or chapter default page template. These books or chapters will no longer have a default page template assigned after this page is deleted.',
    'pages_delete_confirm' => 'Er du sikker på, du vil slette denne side?',
    'pages_delete_draft_confirm' => 'Er du sikker på at du vil slette denne kladdesidde?',
    'pages_editing_named' => 'Redigerer :pageName',
    'pages_edit_draft_options' => 'Kladdeindstillinger',
    'pages_edit_save_draft' => 'Gem kladde',
    'pages_edit_draft' => 'Rediger sidekladde',
    'pages_editing_draft' => 'Redigerer kladde',
    'pages_editing_page' => 'Redigerer side',
    'pages_edit_draft_save_at' => 'Kladde gemt ved ',
    'pages_edit_delete_draft' => 'Slet kladde',
    'pages_edit_delete_draft_confirm' => 'Are you sure you want to delete your draft page changes? All of your changes, since the last full save, will be lost and the editor will be updated with the latest page non-draft save state.',
    'pages_edit_discard_draft' => 'Kassér kladde',
    'pages_edit_switch_to_markdown' => 'Skift til Markdown redigering',
    'pages_edit_switch_to_markdown_clean' => '(Clean Content)',
    'pages_edit_switch_to_markdown_stable' => '(Stable Content)',
    'pages_edit_switch_to_wysiwyg' => 'Skift til WYSIWYG redigering',
    'pages_edit_set_changelog' => 'Sæt ændringsoversigt',
    'pages_edit_enter_changelog_desc' => 'Indtast en kort beskrivelse af ændringer du har lavet',
    'pages_edit_enter_changelog' => 'Indtast ændringsoversigt',
    'pages_editor_switch_title' => 'Skift Editor',
    'pages_editor_switch_are_you_sure' => 'Are you sure you want to change the editor for this page?',
    'pages_editor_switch_consider_following' => 'Consider the following when changing editors:',
    'pages_editor_switch_consideration_a' => 'Once saved, the new editor option will be used by any future editors, including those that may not be able to change editor type themselves.',
    'pages_editor_switch_consideration_b' => 'This can potentially lead to a loss of detail and syntax in certain circumstances.',
    'pages_editor_switch_consideration_c' => 'Tag or changelog changes, made since last save, won\'t persist across this change.',
    'pages_save' => 'Gem siden',
    'pages_title' => 'Overskrift',
    'pages_name' => 'Sidenavn',
    'pages_md_editor' => 'Editor',
    'pages_md_preview' => 'Forhåndsvisning',
    'pages_md_insert_image' => 'Indsæt billede',
    'pages_md_insert_link' => 'Indsæt emnelink',
    'pages_md_insert_drawing' => 'Indsæt tegning',
    'pages_md_show_preview' => 'Show preview',
    'pages_md_sync_scroll' => 'Sync preview scroll',
    'pages_drawing_unsaved' => 'Unsaved Drawing Found',
    'pages_drawing_unsaved_confirm' => 'Unsaved drawing data was found from a previous failed drawing save attempt. Would you like to restore and continue editing this unsaved drawing?',
    'pages_not_in_chapter' => 'Side er ikke i et kapitel',
    'pages_move' => 'Flyt side',
    'pages_copy' => 'Kopier side',
    'pages_copy_desination' => 'Kopier destination',
    'pages_copy_success' => 'Side kopieret succesfuldt',
    'pages_permissions' => 'Sidetilladelser',
    'pages_permissions_success' => 'Sidetilladelser opdateret',
    'pages_revision' => 'Revision',
    'pages_revisions' => 'Sidserevisioner',
    'pages_revisions_desc' => 'Listed below are all the past revisions of this page. You can look back upon, compare, and restore old page versions if permissions allow. The full history of the page may not be fully reflected here since, depending on system configuration, old revisions could be auto-deleted.',
    'pages_revisions_named' => 'Siderevisioner for :pageName',
    'pages_revision_named' => 'Siderevision for :pageName',
    'pages_revision_restored_from' => 'Genoprettet fra #:id; :summary',
    'pages_revisions_created_by' => 'Oprettet af',
    'pages_revisions_date' => 'Revisionsdato',
    'pages_revisions_number' => '#',
    'pages_revisions_sort_number' => 'Revision Number',
    'pages_revisions_numbered' => 'Revision #:id',
    'pages_revisions_numbered_changes' => 'Revision #:id ændringer',
    'pages_revisions_editor' => 'Editor Type',
    'pages_revisions_changelog' => 'Ændringsoversigt',
    'pages_revisions_changes' => 'Ændringer',
    'pages_revisions_current' => 'Nuværende version',
    'pages_revisions_preview' => 'Forhåndsvisning',
    'pages_revisions_restore' => 'Gendan',
    'pages_revisions_none' => 'Denne side har ingen revisioner',
    'pages_copy_link' => 'Kopier link',
    'pages_edit_content_link' => 'Jump to section in editor',
    'pages_pointer_enter_mode' => 'Enter section select mode',
    'pages_pointer_label' => 'Page Section Options',
    'pages_pointer_permalink' => 'Page Section Permalink',
    'pages_pointer_include_tag' => 'Page Section Include Tag',
    'pages_pointer_toggle_link' => 'Permalink mode, Press to show include tag',
    'pages_pointer_toggle_include' => 'Include tag mode, Press to show permalink',
    'pages_permissions_active' => 'Aktive sidetilladelser',
    'pages_initial_revision' => 'Første udgivelse',
    'pages_references_update_revision' => 'System auto-update of internal links',
    'pages_initial_name' => 'Ny side',
    'pages_editing_draft_notification' => 'Du redigerer en kladde der sidst var gemt :timeDiff.',
    'pages_draft_edited_notification' => 'Siden har været opdateret siden da. Det er anbefalet at du kasserer denne kladde.',
    'pages_draft_page_changed_since_creation' => 'Denne side er blevet opdateret siden dette udkast blev oprettet. Det anbefales at du kasserer dette udkast eller passer på ikke at overskrive nogen sideændringer.',
    'pages_draft_edit_active' => [
        'start_a' => ':count brugerer har begyndt at redigere denne side',
        'start_b' => ':userName er begyndt at redigere denne side',
        'time_a' => 'siden siden sidst blev opdateret',
        'time_b' => 'i de sidste :minCount minutter',
        'message' => ':start : time. Pas på ikke at overskrive hinandens opdateringer!',
    ],
    'pages_draft_discarded' => 'Draft discarded! The editor has been updated with the current page content',
    'pages_draft_deleted' => 'Draft deleted! The editor has been updated with the current page content',
    'pages_specific' => 'Specifik side',
    'pages_is_template' => 'Sideskabelon',

    // Editor Sidebar
    'toggle_sidebar' => 'Toggle Sidebar',
    'page_tags' => 'Sidetags',
    'chapter_tags' => 'Kapiteltags',
    'book_tags' => 'Bogtags',
    'shelf_tags' => 'Reoltags',
    'tag' => 'Tag',
    'tags' =>  'Tags',
    'tags_index_desc' => 'Tags can be applied to content within the system to apply a flexible form of categorization. Tags can have both a key and value, with the value being optional. Once applied, content can then be queried using the tag name and value.',
    'tag_name' =>  'Tagnavn',
    'tag_value' => 'Tagværdi (valgfri)',
    'tags_explain' => "Tilføj nogle tags for bedre at kategorisere dit indhold. \n Du kan tildele en værdi til et tag for mere dybdegående organisering.",
    'tags_add' => 'Tilføj endnu et tag',
    'tags_remove' => 'Fjern dette tag',
    'tags_usages' => 'Total tag usages',
    'tags_assigned_pages' => 'Tildelt til sider',
    'tags_assigned_chapters' => 'Tildelt til Kapitler',
    'tags_assigned_books' => 'Tildelt til Bøger',
    'tags_assigned_shelves' => 'Tildelt til bogreoler',
    'tags_x_unique_values' => ':count unikke værdier',
    'tags_all_values' => 'Alle værdier',
    'tags_view_tags' => 'Vis Tags',
    'tags_view_existing_tags' => 'Vis eksisterende tags',
    'tags_list_empty_hint' => 'Tags can be assigned via the page editor sidebar or while editing the details of a book, chapter or shelf.',
    'attachments' => 'Vedhæftninger',
    'attachments_explain' => 'Upload nogle filer, eller vedhæft nogle links, der skal vises på siden. Disse er synlige i sidepanelet.',
    'attachments_explain_instant_save' => 'Ændringer her gemmes med det samme.',
    'attachments_upload' => 'Upload fil',
    'attachments_link' => 'Vedhæft link',
    'attachments_upload_drop' => 'Alternatively you can drag and drop a file here to upload it as an attachment.',
    'attachments_set_link' => 'Sæt link',
    'attachments_delete' => 'Er du sikker på at du vil slette denne vedhæftning?',
    'attachments_dropzone' => 'Drop files here to upload',
    'attachments_no_files' => 'Ingen filer er blevet overført',
    'attachments_explain_link' => 'Du kan vedhæfte et link, hvis du foretrækker ikke at uploade en fil. Dette kan være et link til en anden side eller et link til en fil i skyen.',
    'attachments_link_name' => 'Linknavn',
    'attachment_link' => 'Vedhæftningslink',
    'attachments_link_url' => 'Link til filen',
    'attachments_link_url_hint' => 'Adresse (URL) på side eller fil',
    'attach' => 'Vedhæft',
    'attachments_insert_link' => 'Tilføj vedhæftningslink til side',
    'attachments_edit_file' => 'Rediger fil',
    'attachments_edit_file_name' => 'Filnavn',
    'attachments_edit_drop_upload' => 'Slip filer eller klik her for at uploade og overskrive',
    'attachments_order_updated' => 'Vedhæftningsordre opdateret',
    'attachments_updated_success' => 'Vedhæftningsdetaljer opdateret',
    'attachments_deleted' => 'Vedhæftning slettet',
    'attachments_file_uploaded' => 'Filen blev uploadet korrekt',
    'attachments_file_updated' => 'Filen blev opdateret korrekt',
    'attachments_link_attached' => 'Link succesfuldt vedhæftet til side',
    'templates' => 'Skabeloner',
    'templates_set_as_template' => 'Side er en skabelon',
    'templates_explain_set_as_template' => 'Du kan indstille denne side som en skabelon, så dens indhold bruges, når du opretter andre sider. Andre brugere vil kunne bruge denne skabelon, hvis de har visningstilladelser til denne side.',
    'templates_replace_content' => 'Udskift sideindhold',
    'templates_append_content' => 'Tilføj efter sideindhold',
    'templates_prepend_content' => 'Tilføj før sideindhold',

    // Profile View
    'profile_user_for_x' => 'Bruger i :time',
    'profile_created_content' => 'Oprettet indhold',
    'profile_not_created_pages' => ':userName har ikke oprettet nogle sider',
    'profile_not_created_chapters' => ':userName har ikke oprettet nogle kapitler',
    'profile_not_created_books' => ':userName har ikke oprettet nogle bøger',
    'profile_not_created_shelves' => ':userName har ikke oprettet nogle reoler',

    // Comments
    'comment' => 'Kommentar',
    'comments' => 'Kommentarer',
    'comment_add' => 'Tilføj kommentar',
    'comment_placeholder' => 'Skriv en kommentar her',
    'comment_count' => '{0} Ingen kommentarer|{1} 1 Kommentar|[2,*] :count kommentarer',
    'comment_save' => 'Gem kommentar',
    'comment_new' => 'Ny kommentar',
    'comment_created' => 'kommenteret :createDiff',
    'comment_updated' => 'Opdateret :updateDiff af :username',
    'comment_updated_indicator' => 'Updated',
    'comment_deleted_success' => 'Kommentar slettet',
    'comment_created_success' => 'Kommentaren er tilføjet',
    'comment_updated_success' => 'Kommentaren er opdateret',
    'comment_delete_confirm' => 'Er du sikker på, at du vil slette denne kommentar?',
    'comment_in_reply_to' => 'Som svar til :commentId',
    'comment_editor_explain' => 'Here are the comments that have been left on this page. Comments can be added & managed when viewing the saved page.',

    // Revision
    'revision_delete_confirm' => 'Er du sikker på at du vil slette denne revision?',
    'revision_restore_confirm' => 'Er du sikker på at du ønsker at gendanne denne revision? Nuværende sideindhold vil blive erstattet.',
    'revision_cannot_delete_latest' => 'Kan ikke slette seneste revision.',

    // Copy view
    'copy_consider' => 'Please consider the below when copying content.',
    'copy_consider_permissions' => 'Custom permission settings will not be copied.',
    'copy_consider_owner' => 'You will become the owner of all copied content.',
    'copy_consider_images' => 'Page image files will not be duplicated & the original images will retain their relation to the page they were originally uploaded to.',
    'copy_consider_attachments' => 'Page attachments will not be copied.',
    'copy_consider_access' => 'A change of location, owner or permissions may result in this content being accessible to those previously without access.',

    // Conversions
    'convert_to_shelf' => 'Convert to Shelf',
    'convert_to_shelf_contents_desc' => 'You can convert this book to a new shelf with the same contents. Chapters contained within this book will be converted to new books. If this book contains any pages, that are not in a chapter, this book will be renamed and contain such pages, and this book will become part of the new shelf.',
    'convert_to_shelf_permissions_desc' => 'Any permissions set on this book will be copied to the new shelf and to all new child books that don\'t have their own permissions enforced. Note that permissions on shelves do not auto-cascade to content within, as they do for books.',
    'convert_book' => 'Omdan Bog',
    'convert_book_confirm' => 'Are you sure you want to convert this book?',
    'convert_undo_warning' => 'This cannot be as easily undone.',
    'convert_to_book' => 'Omdan til Bog',
    'convert_to_book_desc' => 'You can convert this chapter to a new book with the same contents. Any permissions set on this chapter will be copied to the new book but any inherited permissions, from the parent book, will not be copied which could lead to a change of access control.',
    'convert_chapter' => 'Omdan Kapitel',
    'convert_chapter_confirm' => 'Er du sikker på at du vil omdanne dette kapitel?',

    // References
    'references' => 'References',
    'references_none' => 'There are no tracked references to this item.',
    'references_to_desc' => 'Listed below is all the known content in the system that links to this item.',

    // Watch Options
    'watch' => 'Watch',
    'watch_title_default' => 'Default Preferences',
    'watch_desc_default' => 'Revert watching to just your default notification preferences.',
    'watch_title_ignore' => 'Ignore',
    'watch_desc_ignore' => 'Ignore all notifications, including those from user-level preferences.',
    'watch_title_new' => 'New Pages',
    'watch_desc_new' => 'Notify when any new page is created within this item.',
    'watch_title_updates' => 'All Page Updates',
    'watch_desc_updates' => 'Notify upon all new pages and page changes.',
    'watch_desc_updates_page' => 'Notify upon all page changes.',
    'watch_title_comments' => 'All Page Updates & Comments',
    'watch_desc_comments' => 'Notify upon all new pages, page changes and new comments.',
    'watch_desc_comments_page' => 'Notify upon page changes and new comments.',
    'watch_change_default' => 'Change default notification preferences',
    'watch_detail_ignore' => 'Ignoring notifications',
    'watch_detail_new' => 'Watching for new pages',
    'watch_detail_updates' => 'Watching new pages and updates',
    'watch_detail_comments' => 'Watching new pages, updates & comments',
    'watch_detail_parent_book' => 'Watching via parent book',
    'watch_detail_parent_book_ignore' => 'Ignoring via parent book',
    'watch_detail_parent_chapter' => 'Watching via parent chapter',
    'watch_detail_parent_chapter_ignore' => 'Ignoring via parent chapter',
];