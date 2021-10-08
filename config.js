/* Magic Mirror Config Sample
 *
 * By Michael Teeuw https://michaelteeuw.nl
 * MIT Licensed.
 *
 * For more information on how you can configure this file
 * see https://docs.magicmirror.builders/getting-started/configuration.html#general
 * and https://docs.magicmirror.builders/modules/configuration.html
 */
let config = {
	address: "localhost", 	// Address to listen on, can be:
							// - "localhost", "127.0.0.1", "::1" to listen on loopback interface
							// - another specific IPv4/6 to listen on a specific interface
							// - "0.0.0.0", "::" to listen on any interface
							// Default, when address config is left out or empty, is "localhost"
	port: 8080,
	basePath: "/", 	// The URL path where MagicMirror is hosted. If you are using a Reverse proxy
					// you must set the sub path here. basePath must end with a /
	ipWhitelist: ["127.0.0.1", "::ffff:127.0.0.1", "::1"], 	// Set [] to allow all IP addresses
															// or add a specific IPv4 of 192.168.1.5 :
															// ["127.0.0.1", "::ffff:127.0.0.1", "::1", "::ffff:192.168.1.5"],
															// or IPv4 range of 192.168.3.0 --> 192.168.3.15 use CIDR format :
															// ["127.0.0.1", "::ffff:127.0.0.1", "::1", "::ffff:192.168.3.0/28"],

	useHttps: false, 		// Support HTTPS or not, default "false" will use HTTP
	httpsPrivateKey: "", 	// HTTPS private key path, only require when useHttps is true
	httpsCertificate: "", 	// HTTPS Certificate path, only require when useHttps is true

	language: "ko",
	locale: "ko-KR",
	logLevel: ["INFO", "LOG", "WARN", "ERROR"], // Add "DEBUG" for even more logging
	timeFormat: 24,
	units: "metric",
	// serverOnly:  true/false/"local" ,
	// local for armv6l processors, default
	//   starts serveronly and then starts chrome browser
	// false, default for all NON-armv6l devices
	// true, force serveronly mode, because you want to.. no UI on this device

	modules: [
		/*{
			module: "alert",
		},
		{
			module: "updatenotification",
			position: "top_bar"
		},
		{
			module:"temp",
			position: "top_right"
		},*/
		{
			module: "clock",
			position: "top_left"
		},
		{
			module: "calendar",
			header: "User Calendar",
			position: "bottom_left",
			config: {
				calendars: [
					{
						symbol: "calendar-check",
						url: "https://calendar.google.com/calendar/ical/qksehgus%40gmail.com/private-883eb7f2af944eb984e1c94ffeefebd5/basic.ics"}
				]
			}
		},
		/*{
			module: "compliments",
			position: "lower_third"
		},
		*/
		{
			module: "weather",
			position: "top_right",
			config: {
				weatherProvider: "openweathermap",
				type: "current",
				location: "Seoul",
				locationID: "1835848", //ID from http://bulk.openweathermap.org/sample/city.list.json.gz; unzip the gz file and find your city
				apiKey: "64f6f2f09eb349de5d59c69c644eab88"
			}
		},
		{
			module: 'MMM-Screencast',
			position: "bottom_right",
			config:{
				position:'bottom_right',
				height:300,
				width:500,
			}
		},		
		/*{
			module: "weather",
			position: "top_right",
			header: "Weather Forecast",
			config: {
				weatherProvider: "openweathermap",
				type: "forecast",
				location: "New York",
				locationID: "5128581", //ID from http://bulk.openweathermap.org/sample/city.list.json.gz; unzip the gz file and find your city
				apiKey: "YOUR_OPENWEATHER_API_KEY"
			}
		}*/
		{
			module: "newsfeed",
			position: "bottom_bar",
			config: {
				feeds: [
					{
						title: "KBS 경제",
						url: "http://world.kbs.co.kr/rss/rss_economy.htm?lang=k"
					}
				],
				showSourceTitle: true,
				showPublishDate: true,
				broadcastNewsFeeds: true,
				broadcastNewsUpdates: true
			}
		},
		
	
		{
			module: 'temp',
			position: 'top_left'
		},
		
		
				
				{
				  module: "MMM-Detector",
				  position: "top_left",
				  configDeepMerge: true,
				  config: {
					debug: false,
				  }
		},
		
				{
				  module: "MMM-GooglePhotos",
				  position: "top_right",
				  config: {
						albums: [], // Set your album name. like ["My wedding", "family share", "Travle to Paris"]
						updateInterval: 1000 * 60, // minimum 10 seconds.
						sort: "new", // "old", "random"
						uploadAlbum: null, // Only album created by `create_uploadable_album.js`.
						condition: {
							fromDate: null, // Or "2018-03", RFC ... format available
							toDate: null, // Or "2019-12-25",
							minWidth: null, // Or 400
							maxWidth: null, // Or 8000
							minHeight: null, // Or 400
							maxHeight: null, // Or 8000
							minWHRatio: null,
							maxWHRatio: null,
							// WHRatio = Width/Height ratio ( ==1 : Squared Photo,   < 1 : Portraited Photo, > 1 : Landscaped Photo)
						},
						showWidth: 1080, // These values will be used for quality of downloaded photos to show. real size to show in your MagicMirror region is recommended.
						showHeight: 1920,
						timeFormat: "YYYY/MM/DD HH:mm", // Or `relative` can be used.
				  }
		},
		
		
		{
			module: "MMM-GoogleAssistant",
			position: "top_center",
			configDeepMerge: true,
			config: {
				assistantConfig: {
				lang:"ko-kr",
				latitude: 36.798130,
				longitude: 127.101540,
				},
			responseConfig:{
				useFullscren:true,
				useResponseOutput:true,
				responseOutputCSS:"response_output.css",
				screenOutputTimer : 5000,
				activateDelay:250,
				useAudioOutput:true,
				useChime:true,
				confirmationChime:true,
				useInformations:true
			},
			chimes: {
				 beep: "beep.mp3",
				 error: "error.mp3",
				 continue: "continue.mp3",
				 confirmation: "confirmation.mp3",
				 open: "Google_beep_open.mp3",
				 close: "Google_beep_close.mp3",
				 warning: "warning.ogg"
			},
			Extented:{
				useEXT: true,
				deviceName: "MagicMirror",
				stopCommand: "멈춰",
				youtube: {
					  useYoutube: true,
					  youtubeCommand: "유튜브",
					  displayResponse: true,
					  useVLC: true,
					  minVolume: 30,
					  maxVolume: 100
					},
				links: {
					  useLinks: true,
					  displayDelay: 60 * 1000,
					  scrollActivate: false,
					  scrollStep: 25,
					  scrollInterval: 1000,
					  scrollStart: 5000
					},
				photos: {
					usePhotos: true,
					useGooglePhotosAPI: true,
					displayType: "none",
					displayDelay: 10 * 1000,
					albums: [],
					sort: "random",
					hiResolution: true,
					timeFormat: "DD/MM/YYYY HH:mm",
					moduleHeight: 300,
					moduleWidth: 300,
				},
				governor: {
					  useGovernor: true,
					  useCallback: true,
					  sleeping: "powersave",
					  working: "ondemand"
					},
				pir:{
					  usePir: true,
					  gpio:21,
				},
				screen: {
					  useScreen: true,
					  animateBody: true,
					  delay: 5 * 60 * 1000,
					  turnOffDisplay: true,
					  mode: 1,
					  ecoMode: true,
					  delayed: 0,
					  displayCounter: true,
					  displayBar: true,
					  displayStyle: "Text",
					  detectorSleeping: true,
					  governorSleeping: true,
					  displayLastPresence: true,
					  userPresenceNotification: true, // available with v3.0.3
					  screenStatusNotification: true // available with v3.0.3
					},
			},

		},
	},
			
		
	]
};

/*************** DO NOT EDIT THE LINE BELOW ***************/
if (typeof module !== "undefined") {module.exports = config;}
