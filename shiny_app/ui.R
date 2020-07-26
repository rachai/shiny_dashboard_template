#Define header
header <- dashboardHeader(title = "Fin Su")

#Define sidebar
sidebar <- dashboardSidebar(
    sidebarMenu(
        menuItem("Menu item 1", tabName = "tab1", icon = icon("money-bill-wave")),
        menuItem("Menu item 2", tabName = "tab2", icon = icon("receipt")),
        menuItem("Menu item 3", tabName = "tab3", icon = icon("coins")),
        menuItem("Menu item 4", tabName = "tab4", icon = icon("balance-scale")),
        menuItem("Menu item 5", tabName = "tab5", icon = icon("piggy-bank"))
    )
)

#Define body
body <- dashboardBody(
    tags$head(tags$style("section.content { overflow-y: hidden; }")),
    useShinyjs(),
    tabItems(
        #Sidebar menu item 1
        tabItem(
            tabName = "tab1",
            tabBox(
                width = 12,
                title = "",
                id = "tab1_tabset",
                tabPanel(
                    title = "Panel 1",
                    tab1_item1$ui
                ),
                tabPanel(
                    title = "Panel 2",
                    tab1_item2$ui
                ),
                tabPanel(
                    title = "Panel 3",
                    tab1_item3$ui
                ),
                tabPanel(
                    title = "Panel 4",
                    tab1_item4$ui
                )
            )
        ),
        
        #Sidebar menu item 2
        tabItem(
            tabName = "tab2",
            tabBox(
                width = 12,
                title = "",
                id = "tab2_tabset"
            )
        ),
        
        #Sidebar menu item 3
        tabItem(
            tabName = "tab3",
            tabBox(
                width = 12,
                title = "",
                id = "tab3_tabset"
            )
        ),
        
        #Sidebar menu item 4
        tabItem(
            tabName = "tab4",
            tabBox(
                width = 12,
                title = "",
                id = "tab4_tabset"
            )
        ),
        
        #Sidebar menu item 5
        tabItem(
            tabName = "tab5",
            tabBox(
                width = 12,
                title = "",
                id = "tab5_tabset"
            )
        )
        )
    )

#Create ui    
ui <- dashboardPage(header, sidebar, body)
