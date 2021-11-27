//import files go on top


//add reg code here    **FAV THINGS CODE changed to suit hero of portfolio   

(() => {
    const   portfolioButton = document.querySelector("#portfolioButton"),
            portfolioButtonTemplate = document.querySelector("#portfolioButtonTemplate").content;

    let portfolioItems = [];

    // The FETCH Function and get my Fav Things DATA
    function getPortfolioData() {
        fetch("./data.json")
            .then(res => res.json())
            .then(data => {
                // save to get it later
                portfolioItems = data;

                buildPortfolioItems(data);
            })
        .catch(error => {
            console.error(error);
        });
    }

    function buildPortfolioItems(info) {

        const portfolioNames = Object.keys(info);

        updateText(info[portfolioNames[0]])

        // this adds all the thumbnails at the bottom of the screen
        portfolioNames.forEach(portfolio => {
            let panel = portfolioButtonTemplate.cloneNode(true);
            let section = panel.children;

            section[0].dataset.name = portfolio

            // adds an image
            section[0].querySelector("img").src = `images/${info[portfolio].portfolioImage}`;

            portfolioButton.appendChild(panel);
        });

        // Goes through each button and adds a 'click' event
        let buttons = document.querySelectorAll(".portfolio_button");
        buttons.forEach(button => {
            button.addEventListener('click', clickFavourite)
        });
    }

    // this 'click' function gets the name and then changes
    function clickFavourite(event) {
        const portfolio = event.currentTarget.dataset.name;
        updateText(portfolioItems[portfolio])
    }

    // this function adds the content 
    function updateText(data) {
        const landingBox = document.querySelector("#portfolio_section");
        let section = landingBox.children;
        // this adds the image
        // first div which are the images 
        section[1].querySelector("img").src = `images/${data.portfolioImage}`;

        // this gets the second div children which is the text
        let text = section[0].children
        // this updates the text
        text[0].textContent = data.name;
        text[1].textContent = data.sub_heading;
    }

    getPortfolioData();
})();
    
