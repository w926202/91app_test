class API_JSON

    def (
    API_JSON = {
        #Create traction
     createtraction_json:
        '//*{
            "ShopId": 11203,   
            "LocationId": 13836,            
            "LocationEmployeeId": 603338,      
            "TransactionNumber": test31,
            "TransactionDateTime": 2018-07-19,
            "CashierNumber": 1,
            "MemberOuterId": TWTBT0000863
            }',

        #Get traction
     get_traction_json:
        '//*{
            "shopId":11203,
            "locationId":13836,
            "locationEmployeeId":60338,
            "memberId": TWTBT0000863
        }',

        #Exist location outerId 
    exist_location_outerid_json:
        '//*{
            "shopId":11203,
            "locationId":13836
        }',

       #Get setting
    get_setting_json:
        '//*{
            "Id":11203
        }',

      #Delete traction
    delete_traction:
        '//*{
            "shopId":11203,
            "locationId":13836,
        }'
 }.freeze
)
end