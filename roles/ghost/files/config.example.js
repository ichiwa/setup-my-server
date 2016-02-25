// # Ghost Configuration
// Setup your Ghost install for various environments
// Documentation can be found at http://support.ghost.org/config/

var path = require('path'),
    config;

config = {
    // ### Production
    // When running Ghost in the wild, use the production environment
    // Configure your URL and mail settings here
    production: {
        url: '', // required
        mail: {
            transport: 'SMTP',
            options: {
                service: 'Gmail',
                auth: {
                    user: '',
                    pass: ''
                }
            }
        },
		database: {
    		client: 'mysql',
    		connection: {
        		host     : '127.0.0.1',
        		user     : 'ghost',
        		password : '', // required
       			database : 'ghost',
        		charset  : 'utf8'
    		}
		},
        server: {
            // Host to be passed to node's `net.Server#listen()`
            host: '127.0.0.1',
            // Port to be passed to node's `net.Server#listen()`, for iisnode set this to `process.env.PORT`
            port: '3000'
        }
    }
};

if (config.production.url == '' || config.production.database.connection.password == '') {
    console.log("url or database password is empty");
    settimeout( () => process.exit(1), 100);
}

// Export config
module.exports = config;
