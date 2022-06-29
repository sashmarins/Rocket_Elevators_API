document.addEventListener('DOMContentLoaded', function(e) {

    const choice = document.getElementById("building-type");
    choice.addEventListener("change", (e) => {
        if (e.target.value === "residential") {
            resetVal();
            hideAll();
            document.getElementById("number-of-apartments").style.display = "";
            document.getElementById("number-of-floors").style.display = "";
            document.getElementById("number-of-basements").style.display = "";
        } else if (e.target.value === "commercial") {
            resetVal();
            hideAll();
            document.getElementById("number-of-floors").style.display = "";
            document.getElementById("number-of-basements").style.display = "";
            document.getElementById("number-of-companies").style.display = "";
            document.getElementById("number-of-parking-spots").style.display = "";
            document.getElementById("number-of-elevators").style.display = "";
        } else if (e.target.value === "corporate") {
            resetVal();
            hideAll();
            document.getElementById("number-of-floors").style.display = "";
            document.getElementById("number-of-basements").style.display = "";
            document.getElementById("number-of-parking-spots").style.display = "";
            document.getElementById("number-of-corporations").style.display = "";
            document.getElementById("maximum-occupancy").style.display = "";

        } else if (e.target.value === "hybrid") {
            resetVal();
            hideAll();
            document.getElementById("number-of-floors").style.display = "";
            document.getElementById("number-of-basements").style.display = "";
            document.getElementById("number-of-parking-spots").style.display = "";
            document.getElementById("number-of-corporations").style.display = "";
            document.getElementById("maximum-occupancy").style.display = "";
            document.getElementById("business-hours").style.display = "";

        } else {
            resetVal();
            hideAll();
        }


    });

    function resetVal() {
        document.getElementById("number-of-apartments").value = "";
        document.getElementById("number-of-floors").value = "";
        document.getElementById("number-of-basements").value = "";
        document.getElementById("number-of-companies").value = "";
        document.getElementById("number-of-parking-spots").value = "";
        document.getElementById("number-of-elevators").value = "";
        document.getElementById("number-of-corporations").value = "";
        document.getElementById("maximum-occupancy").value = "";
        document.getElementById("business-hours").value = "";
    }

    function hideAll() {
        document.getElementById("number-of-apartments").style.display = "none";
        document.getElementById("number-of-floors").style.display = "none";
        document.getElementById("number-of-basements").style.display = "none";
        document.getElementById("number-of-companies").style.display = "none";
        document.getElementById("number-of-parking-spots").style.display = "none";
        document.getElementById("number-of-elevators").style.display = "none";
        document.getElementById("number-of-corporations").style.display = "none";
        document.getElementById("maximum-occupancy").style.display = "none";
        document.getElementById("business-hours").style.display = "none";
    }

    //MY VARIABLES HERE
    let numOfElevators = document.getElementById("number-of-elevators-input"),
        elevatorAmount = document.getElementById("elevator-amount"),
        price = document.getElementById("products"),
        total_price = document.getElementById("elevator-total-price"),
        unitPrice = document.getElementById("elevator-unit-price"),
        fee = document.getElementById("installation-fees"),
        final_price = document.getElementById("final-price");



    //QUALITY OF PRODUCT CHOICE
    price.addEventListener("change", (e) => {
        if (e.target.id === "standard") {
            document.getElementById("elevator-unit-price").value = 7565;
            fee.value = 10 + "%";
            totalPrice();

        }
        if (e.target.id === "premium") {
            document.getElementById("elevator-unit-price").value = 12345;
            fee.value = 13 + "%";
            totalPrice();

        }
        if (e.target.id === "excelium") {
            document.getElementById("elevator-unit-price").value = 15400;
            fee.value = 16 + "%";
            totalPrice();

        }
    });



    //commercial #of elevators needed 
    numOfElevators.addEventListener("input", function() {
        elevatorAmount.value = numOfElevators.value;
        totalPrice();
    });

    //total price for commercial RESULT
    // numOfElevators.addEventListener("input", totalPrice);

    //RESIDENTIAL
    const numOfApts = document.getElementById("number-of-apartments-input");
    const numOfFloors = document.getElementById("number-of-floors-input");
    numOfApts.addEventListener("input", handleResidentials)
    numOfFloors.addEventListener("input", handleResidentials)

    function handleResidentials() {
        const apts = document.getElementById("number-of-apartments-input").value;
        const floors = document.getElementById("number-of-floors-input").value;
        if (apts && floors) {
            // elevatorAmount = document.getElementById("elevator-amount");
            let avgPerFloor = Math.ceil(parseInt(apts) / parseInt(floors) / 6);
            let res_columns = Math.ceil(parseInt(floors) / 20);
            elevatorAmount.value = res_columns * avgPerFloor


            totalPrice();
        }
    }

    //CORPORATE HYBRID
    const max_occupants = document.getElementById("maximum-occupancy-input");
    const floors_num = document.getElementById("number-of-floors-input");
    const basements_num = document.getElementById("number-of-basements-input");
    max_occupants.addEventListener("input", handleCorpHybrid);
    floors_num.addEventListener("input", handleCorpHybrid);
    basements_num.addEventListener("input", handleCorpHybrid);


    function handleCorpHybrid() {
        const tenants = document.getElementById("maximum-occupancy-input").value;
        const corp_floors = document.getElementById("number-of-floors-input").value;
        const corp_basements = document.getElementById("number-of-basements-input").value;
        if (tenants && corp_floors && corp_basements) {
            let tenantsTotal = parseInt(tenants) * (parseInt(corp_floors) + parseInt(corp_basements));
            let elevatorAmountBefore = Math.floor(tenantsTotal / 1000);

            let columns = Math.ceil((parseInt(corp_floors) + parseInt(corp_basements)) / 20);
            let elev_per_column = Math.ceil(elevatorAmountBefore / columns);
            elevatorAmount.value = parseInt(elev_per_column) * parseInt(columns);


            totalPrice();
        }

    }

    // Function for total price of elevators 
    function totalPrice() {
        total_price.value = elevatorAmount.value * unitPrice.value;

        let feeAmount = total_price.value * (parseInt(fee.value) / 100);
        final_price.value = new Intl.NumberFormat('en-US', {
            style: 'currency',
            currency: 'USD',
            currencyDisplay: 'narrowSymbol'
        }).format(parseInt(total_price.value) + feeAmount);

    }

})