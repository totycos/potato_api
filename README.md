# Potato API Documentation

This API provides information about potato prices.  


## Endpoints

### Daily Prices

Returns the potato prices for a specific date.  
  
- URL: `/api/v1/potato_prices/:date/daily_prices`  
- Method: GET  
- URL Params: date=[string] (required)  
- Success Response:  
- Code: 200  
- Content: JSON array of potato prices for the specified date.  

### Max Potential Gain

Returns the maximum potential gain for a specific date.  
  
- URL: `/api/v1/potato_prices/:date/max_potential_gain`  
- Method: GET  
- URL Params: date=[string] (required)  
- Success Response:  
- Code: 200  
- Content: JSON object with the maximum potential gain for the specified date.  


## Example

To get the daily prices for potatoes on 2023-11-12, you would use the following URL:  
  
`/api/v1/potato_prices/2023-11-12/daily_prices`  
  
To get the maximum potential gain for potatoes on 2023-11-12, you would use the following URL:  
  
`/api/v1/potato_prices/2023-11-12/max_potential_gain`  


## Errors
 
If an error occurs, the API will return a JSON object with an error message. The HTTP status code will reflect the type of error.  


## Notes
  
- The date parameter should be in the format YYYY-MM-DD.  
- All times are in UTC.  
- The prices are in Euros (€).


## Setting Up the Potato API

### 1. Clone the Repository

```shell
git clone https://github.com/totycos/potato_api.git
cd potatoes_api
```

### 2. Install Dependencies

```shell
bundle install
```

### 3. Configure the Database

```shell
rails db:create
rails db:migrate
```

### 4. Seed the Database

```shell
rails db:seed
```

### 5. Start the Development Server

```shell
rails server
```
