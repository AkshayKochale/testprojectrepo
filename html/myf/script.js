$(document).ready(function() {
    var data = [
        {
            "Last Updated": null,
            "User Name": "Net9",
            "Check In Time": 1682998108000,
            "Name": "Net Nine",
            "Check Out Time": 1683073561000
        }
    ];

    $('#myTable').DataTable({
        data: data,
        columns: [
            { data: 'Last Updated' },
            { data: 'User Name' },
            { data: 'Check In Time' },
            { data: 'Name' },
            { data: 'Check Out Time' }
        ]
    });
});
