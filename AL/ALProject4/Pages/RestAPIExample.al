page 50112 ConsumeAPI
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Users from API";
 
 
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(SLNo; Rec.WebID)
                {
 
                }
                field(Name; Rec.Name)
                {
 
                }
                field(Phone; Rec.Phone)
                {
 
                }
                field(email; Rec.email)
                {
 
                }
                field(Website; Rec.Website)
                {
 
                }
               
            }
        }
        area(Factboxes)
        {
 
        }
    }
 
    actions
    {
        area(Processing)
        {
            action(GetdatafromAPI)
            {
 
                trigger OnAction()
                var
                    http_client: HttpClient;
                    http_response: HttpResponseMessage;
 
                begin
                    if http_client.Get('https://jsonplaceholder.typicode.com/users', http_response) then begin
                        http_response.Content.ReadAs(response);
                        Message(response);
                    end;
 
                    readfromresponse(response);
                end;
            }
        }
    }
 
 
 
    var
        response : Text;
 
    procedure readfromresponse(response: Text)
    var
        json_array : JsonArray;
        json_value : JsonValue;
        json_object : JsonObject;
        json_token, json_valuetoken : JsonToken;    //container of JSON value
        intloopcounter : Integer;
        varusersapi : Record "Users from API";
    begin
 
 
 
 
        if json_token.ReadFrom(response) then begin
            if json_token.IsArray then begin
                json_array := json_token.AsArray();      //into array
 
                for intloopcounter := 0 to json_array.Count - 1 do begin
 
                    json_array.Get(intloopcounter,json_token);
                   
                    if json_token.IsObject then begin
                        json_object := json_token.AsObject();
 
                        json_object.Get('name',json_valuetoken);
                        varusersapi.Name := json_valuetoken.AsValue().AsText();
 
                        // Message('%1',json_valuetoken.AsValue());
 
                        json_object.Get('phone',json_valuetoken);
                        varusersapi.Phone := json_valuetoken.AsValue().AsText();
 
                         json_object.Get('email',json_valuetoken);
                        varusersapi.email := json_valuetoken.AsValue().AsText();
 
                         json_object.Get('website',json_valuetoken);
                        varusersapi.Website := json_valuetoken.AsValue().AsText();
 
                          json_object.Get('id',json_valuetoken);
                        varusersapi.WebId := json_valuetoken.AsValue().AsInteger();
 
                        varusersapi.Insert();
                       
                    end
 
 
 
 
                end;
 
 
 
 
            end;
 
 
 
        end;
 
 
    end;
 
 
 
 
}