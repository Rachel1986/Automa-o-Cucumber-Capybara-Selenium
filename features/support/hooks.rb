

After('@logout') do
  click_button(class: "menu-main-btn js-menu-left-toggle")
  find(:xpath, "/html/body/nav/div[3]/ul/li[4]/a/div[1]").click
end
