---
layout: links
lng_pair: id_links

# publish date (used for seo)
# if not specified, site.time will be used.
#date: 2022-03-03 12:32:00 +0000

# for override items in _data/lang/[language].yml
#title: My title
#button_name: "My button"
# for override side_and_top_nav_buttons in _data/conf/main.yml
#icon: "fa fa-bath"

# seo
# if not specified, date will be used.
#meta_modify_date: 2022-03-03 12:32:00 +0000
# check the meta_common_description in _data/owner/[language].yml
#meta_description: ""

# optional
# please use the "image_viewer_on" below to enable image viewer for individual pages or posts (_posts/ or [language]/_posts folders).
# image viewer can be enabled or disabled for all posts using the "image_viewer_posts: true" setting in _data/conf/main.yml.
#image_viewer_on: true
# please use the "image_lazy_loader_on" below to enable image lazy loader for individual pages or posts (_posts/ or [language]/_posts folders).
# image lazy loader can be enabled or disabled for all posts using the "image_lazy_loader_posts: true" setting in _data/conf/main.yml.
#image_lazy_loader_on: true
# exclude from on site search
#on_site_search_exclude: true
# exclude from search engines
#search_engine_exclude: true
# to disable this page, simply set published: false or delete this file
#published: false


# you can always move this content to _data/content/ folder
# just create new file at _data/content/links/[language].yml and move content below.
###########################################################
#                Links Page Data
###########################################################
page_data:
  main:
    header: "Links"
    info: "Your Links page description."

  # To change order of the Categories, simply change order. (you don't need to change list order.)
  category:
    - title: "future project"
      type: id_jekyiiliquid
      color: "gray"
    - title: "coding"
      type: id_webdesign
      color: "#F4A273"
    - title: "web design"
      type: id_programming
      color: "#62b462"

  list:
    -
    # programming
    - type: id_programming
      title: "Stack OverFlow"
      url: "https://stackoverflow.com/"
      info: "Stack Overflow is a question and answer website for professional and enthusiastic programmers."

    # jekyiiliquid
    - type: id_jekyiiliquid
      title: "merobaja vst"
      url: ""
      info: "nepali musical instruments vst and AU plugin for mac and windows"
    - type: id_jekyiiliquid
      title: "nepali date"
      url: "https://github.com/khumnath/nepdate"
      info: "nepdate-widget is a desktop floating widget for Linux that displays the Nepali date. It provides the following features:

Displays the Nepali date on your desktop.
Can be moved anywhere on the screen.
with automatic text color adjustment based on the background color."
    - type: id_jekyiiliquid
      title: "Nepali Radio Player"
      url: "https://github.com/prchapagain/nepali-radio-player"
      info: "Nepali Radio Player is a web-based app providing seamless access to various Nepali radio stations. Features include play/pause, station navigation, and an FM list toggle. The app is responsive, with an interactive UI. Files include HTML, CSS for styling, and JavaScript for functionality."

    # webdesign
    - type: id_webdesign
      title: "W3Schools"
      url: "https://www.w3schools.com/"
      info: "W3Schools offers free online tutorials, references and exercises in all the major languages of the web. Covering popular subjects like HTML, CSS, JavaScript, Python, SQL, Java, and many more."
---
