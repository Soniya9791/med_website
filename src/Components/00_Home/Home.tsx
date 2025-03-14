import React from "react";
import dr1 from "../../assets/images/dr1.png";
import dr2 from "../../assets/images/dr2.png";
import dot from "../../assets/images/dot.png";
import blackdot from "../../assets/images/blckdot.png";
import dr3 from "../../assets/images/dr3.png";
import dr4 from "../../assets/images/dr4.png";
import dr5 from "../../assets/images/dr5.png";
import { FaCirclePlay } from "react-icons/fa6";
import { FaPlay } from "react-icons/fa";
import { FaRegCalendarAlt } from "react-icons/fa";
import img1 from "../../assets/images/img1.svg";
import { FcApproval } from "react-icons/fc";
import { FaArrowRight } from "react-icons/fa6";
import icon1 from "../../assets/images/icon1.svg";
import icon2 from "../../assets/images/icon2.svg";
import icon3 from "../../assets/images/icon3.svg";
import icon4 from "../../assets/images/icon4.svg";
import icon5 from "../../assets/images/icon5.svg";
import suitcase from "../../assets/images/case.svg";
import book from "../../assets/images/Book.svg";
import checkup from "../../assets/images/checkup.svg";
import payment from "../../assets/images/payment.svg";
import treatment from "../../assets/images/treatment.svg";
import grpdr from "../../assets/images/grpdr.png";
import { FaCalendarCheck } from "react-icons/fa";
import treatmentbg from "../../assets/images/treatmentbg.png";
import { FaMinus, FaPlus } from "react-icons/fa";
import { useState } from "react";
import { Carousel } from 'primereact/carousel';
import grp1 from "../../assets/images/grp1.png";
import grp2 from "../../assets/images/grp2.png";
import grp3 from "../../assets/images/grp3.png";
import formimg from "../../assets/images/form.png";


import "./Home.css";



const Home: React.FC = () => {

    const testimonials = [
        {
            name: "Robert Lee",
            role: "Accountant",
            image: dr1,
            feedback: "Top-notch healthcare with a patient-centered approach. Highly skilled doctors and compassionate staff."
        },
        {
            name: "Emily Davis",
            role: "CEO of Digital Marketing",
            image: dr2,
            feedback: "Highly skilled doctors and compassionate staff. Great patient-centered healthcare experience."
        },
        {
            name: "Mary Johnson",
            role: "Student",
            image: dr3,
            feedback: "Great experience, caring doctors, and modern facilities. Highly skilled doctors and compassionate staff."
        }
    ];

    const testimonialTemplate = (testimonial: any) => {
        return (
            <div className="p-4 border bg-white h-[40vh] shadow-lg mx-2"> {/* Added mx-2 for horizontal margin */}
                <div className="flex flex-row gap-10">
                    <img src={testimonial.image} alt={testimonial.name} className="w-15 h-15 rounded-full mb-3" />
                    <div>
                        <h4 className="font-bold">{testimonial.name}</h4>
                        <p className="text-gray-500">{testimonial.role}</p>
                    </div>
                </div>
                <p className="text-gray-700 mt-2">{testimonial.feedback}</p>
            </div>
        );
    };

    const articles = [
        {
            title: "Best Medical Network Directory For Physicians & Clients",
            description: "Tips for Maintaining a Healthy Heart Hypertension, commonly known as high blood",
            image: grp1,
            link: "#"
        },
        {
            title: "The Importance of Regular Health Checkups",
            description: "Tips for Maintaining a Healthy Heart Hypertension, commonly known as high blood",
            image: grp2,
            link: "#"
        },
        {
            title: "Managing Better Stress for Better Mental Health",
            description: "Tips for Maintaining a Healthy Heart Hypertension, commonly known as high blood",
            image: grp3,
            link: "#"
        }
    ];


    const faqs = [
        {
            question: "Are telemedicine consultations available?",
            answer: "Yes, we offer telemedicine consultations for certain medical conditions.",
        },
        {
            question: "Do you accept health insurance?",
            answer: "  Yes, we accept most major health insurance plans.",
        },
        {
            question: "How much does a consultation cost?",
            answer: "   Consultation fees vary depending on the doctor and the type of consultation.",
        },
    ];

    const [openIndex, setOpenIndex] = useState(0);

    const services = [
        {
            icon: icon1,
            title: "Eye Care",
            description: "We understand the importance of clear vision and its impact on your.",
        },
        {
            icon: icon2,
            title: "Medical Checkup",
            description: "During your medical checkup, our skilled healthcare professionals.",
        },
        {
            icon: icon3,
            title: "Dental Care",
            description: "We are passionate about providing top-notch dental care to help you.",
        },
        {
            icon: icon4,
            title: "Laboratory Service",
            description: "We recognize the importance of accurate diagnostics.",
        },
        {
            icon: icon5,
            title: "Patient-Centered",
            description: "Hospitals, or clinics with positive reviews and ratings from patients.",
        },
    ];
    return (
        <div className="bg-[#fff7f3]" >
            <div className="h-[100%] bg-[#07332f] mt-0 p-25">
                <div className=" mt-0  flex items-center px-12">
                    {/* Left Side - Text Content */}
                    <div className="w-1/2">
                        <p className="text-sm text-white tracking-widest uppercase">
                            We Take Care Of Your Health
                        </p>
                        <h1 className="text-4xl font-bold text-[#f89c7c] mt-2">
                            We Are Providing Best & Affordable Health Care.
                        </h1>
                        <p className="text-white mt-4">
                            Our goal is to deliver high-quality healthcare services. We believe
                            that everyone deserves access to excellent medical care without
                            compromising on quality.
                        </p>
                        {/* Buttons */}
                        <div className="mt-6 flex items-center space-x-4">
                            <button className="bg-[#f89c7c] text-white px-6 py-2 rounded-md shadow-lg hover:bg-[#e37c5e] transition">
                                Read More
                            </button>
                            <button className="flex items-center text-white">
                                <FaPlay className="mr-2" />
                                Watch Video
                            </button>
                        </div>
                    </div>


                    <div
                        className="w-1/2 flex flex-row  lg:w-[50%]  relative bg-no-repeat bg-contain bg-right"
                        style={{ backgroundImage: `url(${dot})` }}
                    >
                        <img
                            src={dr1}
                            alt="Doctor 1"
                            className="w-50 h-88 object-cover mx-10 mt-20 rounded-[40%] shadow-lg "
                        />
                        <img
                            src={dr2}
                            alt="Doctor 2"
                            className="w-50 h-88 object-cover rounded-[40%] shadow-lg"
                        />
                    </div>
                </div>

            </div>

            <div className="bg-[#fef6f3] p-25">
                {/* Top Section - Contact Info */}


                <div className="flex flex-row ">

                    <div className="bg-[#f89c7c] flex flex-col   text-white ">
                        <h3 className="text-2xl mt-10 p-3 items-center font-semibold">
                            Don't <span className=" font-extrabold text-xl">Hesitate</span> To Contact Us
                        </h3>
                        <button className=" flex flex-row justify-center mt-15 items-center bg-black p-3 text-sm">
                            Make Appointment <FaRegCalendarAlt className="ml-2" />
                        </button>
                    </div>


                    <div className="bg-[#07332f] p-6 text-white">
                        <img
                            src={img1}
                            alt="logo"

                        />
                        <h3 className="text-lg font-semibold mt-5">Need Family Health</h3>
                        <p className="text-sm mt-2 text-slate-300">
                            We understand the importance of family health & overall well-being.
                        </p>
                    </div>

                    <div className="bg-[#07332f] p-6 text-white border-l-1 border-white">
                        <img
                            src={img1}
                            alt="logo"

                        />
                        <h3 className="text-lg font-semibold mt-5">24 Hours Service</h3>
                        <p className="text-sm mt-2 text-slate-300">
                            We take pride in offering 24-hour medical services to ensure that
                            you.
                        </p>
                    </div>
                </div>



                <div className="mt-20 flex flex-wrap">
                    {/* Left - Images */}
                    <div
                        className="w-1/2 flex flex-row  lg:w-[50%]  relative bg-no-repeat bg-contain bg-right"
                        style={{ backgroundImage: `url(${dot})` }}
                    >
                        <img
                            src={dr3}
                            alt="Doctor 3"
                            className="w-50 h-88 object-cover mx-10 mt-20 rounded-[40%] shadow-lg "
                        />
                        <div className="flex flex-col gap-7"> <img
                            src={dr4}
                            alt="Doctor 4"
                            className="w-50 h-88 object-cover rounded-[40%] shadow-lg"
                        />
                            <div className="relative w-60 h-30 rounded-[40%] shadow-lg overflow-hidden">

                                <img
                                    src={dr5}
                                    alt="Doctor 5"
                                    className="absolute inset-0 w-full h-full object-cover opacity-50"
                                />

                                {/* Overlay for Watch Video */}
                                <div className="absolute inset-0 flex flex-row bg-transparent justify-center items-center text-black">
                                    <span className="text-3xl"><FaCirclePlay /></span> {/* Watch Icon (Play Button) */}
                                    <p className="text-sm ml-2 font-semibold">Watch Video</p>
                                </div>
                            </div>

                        </div>
                    </div>


                    <div className="w-1/2 px-10">
                        <h5 className="text-sm text-[#f89c7c] tracking-widest uppercase">
                            About Medicalife
                        </h5>
                        <h2 className="text-4xl font-bold text-[#07332f] mt-2">
                            Our Best Services & Popular Treatment Here.
                        </h2>
                        <p className="text-gray-700 mt-4">
                            We take pride in offering a wide range of best-in-class medical
                            services and popular treatments to cater to your diverse healthcare
                            needs.
                        </p>

                        {/* Bullet Points */}
                        <ul className="mt-4 space-y-2">
                            <li className="flex items-center">
                                <FcApproval /> <span className="ml-2">Mental Health Solutions</span>
                            </li>
                            <li className="flex items-center">
                                <FcApproval /> <span className="ml-2">Rapid Patient Improvement</span>
                            </li>
                            <li className="flex items-center">
                                <FcApproval /> <span className="ml-2">World-Class Treatment</span>
                            </li>
                        </ul>

                        {/* Read More Button */}
                        <button className="mt-6 rounded-4xl border-2 border-[#f89c7c] text-[#f89c7c] px-6 py-2  shadow-lg hover:bg-[#07332f] transition">
                            Read More
                        </button>
                    </div>
                </div>
                <section className="bg-[#FFF7F5] py-16 px-10">


                    <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 max-w-6xl mx-auto">
                        <div className="text-center mt-10">
                            <h3 className="text-[#D8927A] uppercase tracking-widest">Medical Services</h3>
                            <h2 className="text-4xl font-bold text-[#07332F]">
                                We're Providing <br /> Best Services.
                            </h2>
                        </div>
                        {services.map((service, index) => (
                            <div key={index} className="relative overflow-hidden group border shadow-md cursor-pointer">
                                {/* Background Hover Effect */}
                                <div className="absolute inset-0 bg-[#f7a582] origin-bottom scale-y-0 transition-transform duration-500 group-hover:scale-y-100"></div>

                                <div className="relative p-6 flex flex-col items-center transition-all duration-300 z-10">

                                    <img src={service.icon} alt="no Image" />
                                    <h3 className="text-xl font-semibold mt-4 text-[#07332F] group-hover:text-white">
                                        {service.title}
                                    </h3>
                                    <p className="text-gray-600 text-center mt-2 group-hover:text-gray-200">
                                        {service.description}
                                    </p>
                                </div>

                                {/* Button */}
                                <div className="relative bg-[#F4A38A] text-white  text-center py-3 font-semibold flex justify-center items-center gap-2 transition-all duration-300 z-10  group-hover:text-[#07332F]">
                                    Read More <FaArrowRight />
                                </div>
                            </div>
                        ))}
                    </div>
                </section>

            </div>
            <section className="bg-[#002E2C] p-10">
                <div className="max-w-6xl mx-auto flex flex-col md:flex-row items-center justify-between">

                    <div className="flex items-center gap-6">
                        <div className="text-[#F4A38A] ,h-10, w-10"> <img
                            src={suitcase}
                            alt="case"
                            className=" object-cover  "
                        />  </div>
                        <div>
                            <h2 className="text-4xl font-bold text-white">Open For Appointments</h2>
                            <p className="text-gray-300 mt-2 max-w-lg">
                                We are delighted to announce that our doors are open, and we are now accepting
                                appointments to serve you better.
                            </p>
                        </div>
                    </div>


                    <button className="mt-6 md:mt-0 border border-[#F4A38A] text-[#F4A38A] px-6 py-3 rounded-full text-lg font-semibold flex items-center gap-2 hover:bg-[#F4A38A] hover:text-white transition-all duration-300">
                        Make Appointment <FaCalendarCheck />
                    </button>
                </div>
            </section>
            <section className="bg-[#feefe9] p-20">
                <div className="max-w-6xl ">
                    {/* Top Section */}
                    <div className="flex w-[100%] flex-col md:flex-row justify-between  items-start">
                        {/* Left Content */}
                        <div className="md:w-1/2 lg:w-[40%] w-[50%]">
                            <p className="text-[#F4A38A] uppercase tracking-wide font-semibold">How We Work</p>
                            <h2 className="text-5xl font-bold text-[#002E2C] mt-2">
                                A Comprehensive Directory For Your Health Care.
                            </h2>
                        </div>

                        {/* Right Description */}
                        <p className="md:w-1/2 text-gray-600 w-[50%] mt-4 md:mt-3">
                            We are your trusted one-stop destination for all your healthcare needs. Our comprehensive directory is designed to provide you with easy access to a wide range of healthcare services and providers, ensuring that you and your family receive the best care.
                        </p>
                    </div>

                    {/* Icons Section */}
                    <div className="mt-12 grid grid-cols-2 md:grid-cols-4 gap-8 text-center">

                        <div className=""> <img
                            src={book}
                            alt="book"
                            className=" object-cover mx-20"
                        />
                            <p className="mt-2 text-2xl font-semibold text-[#002E2C]">Book An Appointment</p>
                        </div>
                        <div className=""> <img
                            src={checkup}
                            alt="checkup"
                            className=" object-cover mx-20"
                        />
                            <p className="mt-2 text-2xl font-semibold text-[#002E2C]">Conduct Checkup</p>
                        </div>
                        <div className=""> <img
                            src={treatment}
                            alt="treatment"
                            className=" object-cover mx-20"
                        />
                            <p className="mt-2 text-2xl font-semibold text-[#002E2C]">Perform Treatment</p>
                        </div>
                        <div className=""> <img
                            src={payment}
                            alt="payment"
                            className=" object-cover mx-20"
                        />
                            <p className="mt-2 text-2xl font-semibold text-[#002E2C]">Prescribe & Payment</p>
                        </div>
                    </div>
                </div>
            </section>
            <section className="bg-[#FFF7F3] py-16 px-10">
                <div className="max-w-6xl mx-auto flex flex-col md:flex-row gap-10 items-center">

                    <div className="relative w-full md:w-1/2">
                        <img src={grpdr} alt="Doctors" className="w-full rounded-lg shadow-lg" />

                        <div className="absolute -mt-15  right-0  flex">
                            <div className="bg-[#023E36] text-white p-10  w-40 h-30 text-center">
                                <p className="text-3xl font-bold">100+</p>
                                <p className="text-sm">Doctors</p>
                            </div>
                            <div className="bg-[#F4A38A] text-white p-10 w-40 h-30 text-center">
                                <p className="text-3xl font-bold">16+</p>
                                <p className="text-sm">World Office</p>
                            </div>
                        </div>
                    </div>

                    {/* Right Side - FAQ */}
                    <div className="w-full md:w-1/2">
                        <p className="text-[#F4A38A] text-2xl uppercase tracking-wide font-extralight">FAQs</p>
                        <h2 className="text-5xl font-bold text-[#002E2C] mt-2">
                            Consultations with Qualified doctors.
                        </h2>

                        <div className="mt-8 space-y-4">
                            {faqs.map((faq, index) => (
                                <div key={index} className=" pb-3">
                                    <button
                                        className="flex justify-between items-center w-full text-xl font-medium text-[#002E2C]"
                                        onClick={() => setOpenIndex(index === openIndex ? -1 : index)}
                                    >
                                        {faq.question}
                                        {index === openIndex ? (
                                            <FaMinus className="text-[#002E2C]" />
                                        ) : (
                                            <FaPlus className="text-[#002E2C]" />
                                        )}
                                    </button>
                                    {index === openIndex && (
                                        <p className="mt-2 text-gray-600">{faq.answer}</p>
                                    )}
                                </div>
                            ))}
                        </div>
                    </div>
                </div>
            </section>

            <section className="bg-[#023E36] py-16 px-10 ">
                <div className="max-w-6xl p-10 ">
                    <p className="text-[#F4A38A] mt-2.5 uppercase tracking-wide font-semibold">Testimonial</p>
                    <h2 className="text-4xl font-bold text-white mt-2">What Patients Say About Us.</h2>

                    <div className="flex flex-row gap-10 w-[100%]">
                        <Carousel
                            className="mt-10 text-black absolute left-2 h-[full] space-x-4" // Added space-x-4 for horizontal spacing
                            value={testimonials}
                            itemTemplate={testimonialTemplate}
                            numVisible={3}
                            numScroll={1}
                            showIndicators
                        />
                    </div>
                </div>
            </section>

            <section className="bg-[#fef6f2] mt-40 py-10 px-6">
                <div className="max-w-6xl mx-auto">
                    <h3 className="text-[#f7a582] text-lg font-extralight uppercase">Our Blog</h3>
                    <h2 className="text-3xl font-bold text-[#07332f] mt-2">Latest News & Articles.</h2>

                    <div className="mt-6 grid grid-cols-1 md:grid-cols-3 gap-10">
                        {articles.map((article, index) => (
                            <div key={index} className="bg-[#fef6f2]  p-4">
                                <img src={article.image} alt={article.title} className="w-full h-48 object-cover rounded-md" />
                                <h3 className="text-xl font-bold mt-5 text-gray-900">{article.title}</h3>
                                <p className="text-[#07332f] text-sm mt-5">{article.description}</p>
                                <a href={article.link} className="text-[#f7a582] font-extralight mt-2 inline-block">Read More →</a>
                            </div>
                        ))}
                    </div>
                </div>
            </section>
            <section className="relative bg-cover bg-center py-16 px-6 " style={{
                backgroundImage: `url(${treatmentbg})`,
                backgroundAttachment: "fixed",
                backgroundSize: "cover",
                backgroundPosition: "center",

            }}>

                <h3 className="text-lg font-medium text-center text-[#002E2C] uppercase tracking-wide">Fill the Form</h3>
                <h2 className="text-3xl font-bold text-[#002E2C] text-center mb-6">Contact Form.</h2>
                <div className="max-w-5xl mx-auto grid grid-cols-1 md:grid-cols-2 gap-6 bg-[#043d36] rounded-lg shadow-lg overflow-hidden">

                    {/* Left Side - Info & Illustration */}
                    <div className="flex flex-col justify-center items-center bg-[#f7a582]  text-center w-[80%]">
                        <img src={formimg} alt="Appointment" className="w-50 h-50 mb-4" />
                        <h2 className="text-2xl font-semibold text-white">Make <span className="font-bold">Appointment</span> &</h2>
                        <p className="text-white text-2xl font-medium">Take Care Of Your <br />Healthy Life</p>
                    </div>

                    {/* Right Side - Form */}
                    <div className="p-8">


                        <form className="space-y-4">
                            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <input type="text" placeholder="Name" className="w-full p-3 bg-transparent border border-gray-600 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-[#f7a582]" />
                                <input type="email" placeholder="Email" className="w-full p-3 bg-transparent border border-gray-600 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-[#f7a582]" />
                            </div>
                            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <input type="text" placeholder="Your Phone" className="w-full p-3 bg-transparent border border-gray-600 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-[#f7a582]" />
                                <input type="date" className="w-full p-3 bg-transparent border border-gray-600 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-[#f7a582]" />
                            </div>
                            <textarea placeholder="Your Message" rows={4} className="w-full p-3 bg-transparent border border-gray-600 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-[#f7a582]"></textarea>

                            <button className="w-[25%] p-3 bg-transparent border-2 border-[#f7a582] text-[#f7a582] rounded-full font-semibold hover:bg-white hover:text-[#f7a582] transition duration-300">
                                Send
                            </button>
                        </form>
                    </div>
                </div>
            </section>
        </div>




    );
};

export default Home;
