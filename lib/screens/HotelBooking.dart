import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:isports_app/main.dart';
import 'package:isports_app/screens/SideNav.dart';
import 'package:sizer/sizer.dart';

class HotelBooking extends StatefulWidget {
  const HotelBooking({super.key});

  @override
  State<HotelBooking> createState() => _HotelbookingState();
}

class _HotelbookingState extends State<HotelBooking> {
  String? selectedRoom = '1';
  DateTime? checkInDate;
  DateTime? checkOutDate;
  TextEditingController locationController = TextEditingController();

  Future<DateTime?> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    return pickedDate;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset("assets/images/avoota_logo.png"),
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      drawer: SideNav(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            _perfectstay(context),
            _buildTrendingGateways(),
            _goaHotel(),
            _ootyHotel(),
            _manaliHotel(),
            _buildLastMinuteDeals(),
            _buildIconicTempleCities(),
            _buildWhyBookWithAvoota()
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'My Bookings'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
      ]),
    );
  }

  Widget _manaliHotel() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/manali1.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/manali2.png"),
              Image.asset("assets/images/manali3.png"),
            ],
          ),
          Container(
            child: Text(
              "Best Hotels In Manali",
              style: TextStyle(
                fontSize: 16.px,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "2274 Properties Available",
            style: TextStyle(
              fontSize: 16.px,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  // Your action here
                },
                child: Icon(
                  Icons.arrow_outward,
                  color: Colors.white,
                ),
                backgroundColor: Colors
                    .red, // Add icon to make the button look like in your design
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _ootyHotel() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/ooty1.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/ooty2.png"),
              Image.asset("assets/images/ooty3.png"),
            ],
          ),
          Container(
            child: Text(
              "Best Hotels In Ooty",
              style: TextStyle(
                fontSize: 16.px,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "1676 Properties Available",
            style: TextStyle(
              fontSize: 16.px,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  // Your action here
                },
                child: Icon(
                  Icons.arrow_outward,
                  color: Colors.white,
                ),
                backgroundColor: Colors
                    .red, // Add icon to make the button look like in your design
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _goaHotel() {
    return Container(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset("assets/images/goa1.png"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset("assets/images/goa2.png"),
              Image.asset("assets/images/goa3.png"),
            ],
          ),
          Container(
            child: Text(
              "Best Hotels In Goa",
              style: TextStyle(
                fontSize: 16.px,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Text(
            "1580 Properties Available",
            style: TextStyle(
              fontSize: 16.px,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: FloatingActionButton(
                onPressed: () {
                  // Your action here
                },
                child: Icon(
                  Icons.arrow_outward,
                  color: Colors.white,
                ),
                backgroundColor: Colors
                    .red, // Add icon to make the button look like in your design
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _perfectstay(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Container(
        padding: EdgeInsets.all(16.0),
        decoration: BoxDecoration(
            color: Colors.blue.shade50, borderRadius: BorderRadius.circular(8)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Find Your Perfect Stay',
              style: TextStyle(
                  fontFamily: 'PlusjakartaSans',
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                  height: 3.1,
                  color: Color(0xFF1E1E1E)),
            ),
            Text(
              'Save up to 60% on Hotel Booking 300000+ Hotels Worldwide',
              style: TextStyle(
                  fontFamily: 'PlusjakartaSans',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  height: 1.57),
            ),
            SizedBox(height: 16),
            TextField(
              controller: locationController,
              decoration: InputDecoration(
                labelText: 'Enter Locality,landmark,city or hotel',
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(5)),
                prefixIcon: Icon(Icons.location_on),
              ),
            ),
            SizedBox(height: 16),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    readOnly: true,
                    onTap: () async {
                      checkInDate = await _selectDate(context);
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      labelText: checkOutDate == null
                          ? 'Check In'
                          : checkInDate.toString(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: TextField(
                    readOnly: true,
                    onTap: () async {
                      checkOutDate = await _selectDate(context);
                      setState(() {});
                    },
                    decoration: InputDecoration(
                      labelText: checkOutDate == null
                          ? 'Check out'
                          : checkOutDate.toString(),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: Icon(Icons.calendar_today),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 16),
            DropdownButtonFormField(
                value: selectedRoom,
                decoration: InputDecoration(
                  labelText: 'Rooms',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  contentPadding: EdgeInsets.all(16),
                ),
                items: [],
                onChanged: null,
                onTap: () {}),
            SizedBox(height: 16),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                onPressed: () {},
                child: Text(
                  'Search',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _buildTrendingGateways() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Trending Gateways',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          Text(
              'Explore handpicked trending getaways with exclusive deals and unique experiences, perfect for your next travel adventure!'),
        ],
      ),
    );
  }

  Widget _buildLastMinuteDeals() {
    
    return Container(
      height: 180,
      width: double.infinity,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Stack(
        children: [
          // Background Image
          Image.asset(
            'assets/images/goa2.png', // Add your image path
            width: double.infinity,
            height: double.infinity,
            fit: BoxFit.cover,
          ),
          
          // Red Overlay
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
                colors: [
                  Colors.red.withOpacity(0.95),
                  Colors.red.withOpacity(0.85),
                ],
              ),
            ),
          ),
          
          // Content
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Last-Minute Deals!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Need a hotel fast? Grab our last-minute offers and book your perfect stay today!',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
                const Spacer(),
                ElevatedButton(
                  onPressed: () {
                    // Add your explore action here
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.red,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 24,
                      vertical: 12,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Explore',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  

    // return Container(
    //   padding: EdgeInsets.all(16),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Text('Last-Minute Deals!',
    //           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
    //       Text(
    //           'Need a hotel fast? Grab our last-minute offers and book your perfect stay today!'),
    //       ElevatedButton(
    //         child: Text('Explore'),
    //         onPressed: () {},
    //       ),
    //     ],
    //   ),
    // );
  }

  Widget _buildIconicTempleCities() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Title
          Text(
            'Iconic Temple Cities',
            style: TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 24,
              color: Color(0xFF1E1E1E),
              fontFamily: 'PlusJakartaSans',
            ),
          ),

          // Subtitle
          Text(
            'Uncover the spiritual essence of renowned temple cities, offering rich heritage, divine experiences, and cultural wonders.',
            style: TextStyle(
              fontWeight: FontWeight.w500,
              fontFamily: 'PlusJakartaSans',
              fontSize: 14,
              height: 1.57,
              color: Color(0xFF697586),
            ),
          ),

          SizedBox(height: 16),

          // Carousel Slider
          CarouselSlider(
            items: [
              // Amritsar
              buildCityCard("assets/images/amritsar.png", "Amritsar"),
              // Guwahati
              buildCityCard("assets/images/Guwahati.jpg", "Guwahati"),
              // Puri
              buildCityCard("assets/images/Puri.jpg", "Puri"),
              // Haridwar
              buildCityCard("assets/images/Haridwar.jpg", "Haridwar"),
              // Rameshwaram
              buildCityCard("assets/images/Rameshwaram.jpg", "Rameshwaram"),
              // Kanchipuram
              buildCityCard("assets/images/Kanchipuram.jpg", "Kanchipuram"),
              // Varanasi
              buildCityCard("assets/images/Varanasi.jpg", "Varanasi"),
              // Tirupati
              buildCityCard("assets/images/Tirupati.jpg", "Tirupati"),
              // Madurai
              buildCityCard("assets/images/Madurai.jpg", "Madurai"),
              // Bhubaneswar
              buildCityCard("assets/images/Bhubaneswar.jpg", "Bhubaneswar"),
            ],
            options: CarouselOptions(
              height: 220,
              enlargeCenterPage: true,
              autoPlay: false,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),
          ),
        ],
      ),
    );
  }

  // Helper function to build a city card
  Widget buildCityCard(String imagePath, String cityName) {
    return Column(
      children: [
        // Image container with rounded corners
        Container(
          margin: EdgeInsets.all(8),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(imagePath),
              fit: BoxFit.cover,
            ),
            borderRadius: BorderRadius.circular(16),
          ),
          height: 150,
          width: double.infinity,
        ),

        // City name text
        Text(
          cityName,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildWhyBookWithAvoota() {
    return Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Why Book With Avoota?',
              style: TextStyle(
                  fontWeight: FontWeight.w700,
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 16,
                  height: 1.71)),
          SizedBox(height: 8),
          Text(
              'Avoota offers a seamless hotel booking experience with unbeatable discounts on thousands of properties worldwide. Whether youre looking for luxury stays or budget-friendly accommodations, Avoota ensures you get the best deal every time. Enjoy personalized recommendations, exclusive offers, and 24/7 customer support to make your travel planning effortless. With a user-friendly interface, secure payment options, and verified reviews, Avoota is your go-to platform for a hassle-free and rewarding hotel booking experience. Book with confidence and enjoy your perfect stay!',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: 'PlusJakartaSans',
                  fontSize: 12,
                  height: 1.5)),
        ],
      ),
    );
  }
}
