$.getJSON("https://api.sandbox.treasuryprime.com/account/:id/?account_id=YOUR_ACCESS_ID", function(data){
    console.log(data)

    $.each(data, function(index, value){
        console.log(value)
        var name = value.user.name;
        var status = value.user.status
    })
})