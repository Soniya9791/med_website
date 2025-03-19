import React, { useEffect, useRef } from "react";
import dr1 from "../../assets/images/dr1.png";
import dr2 from "../../assets/images/dr2.png";
import dot from "../../assets/images/dot.png";

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
import self from"../../assets/images/self.svg"
import score from "../../assets/images/score.svg";

import take from "../../assets/images/take.svg";
import past from "../../assets/images/past.svg";
import grpdr from "../../assets/images/grpdr.png";
import { FaCalendarCheck } from "react-icons/fa";
import treatmentbg from "../../assets/images/treatmentbg.jpg";
import { FaMinus, FaPlus } from "react-icons/fa";
import { useState } from "react";

import grp1 from "../../assets/images/grp1.png";
import grp2 from "../../assets/images/grp2.png";
import grp3 from "../../assets/images/grp3.png";
import formimg from "../../assets/images/form.png";
import { motion} from "framer-motion";
import CountUp from "react-countup";
import "./Home.css";
import { useSwipeable } from "react-swipeable";
import { GrPrevious } from "react-icons/gr";
import { GrNext } from "react-icons/gr";

const Home: React.FC = () => {

    const testimonials = [
        { name: "Nirmal", role: "Patient", image: dr1, feedback: "MedPredeit helped me understand my health risks and make better lifestyle choices. It’s an easy-to-use tool that gives valuable insights." },
        { name: "Riya", role: "Patient", image: dr2, feedback: "Tracking my family’s health in one place has never been easier! I love how MedPredeit provides personalized recommendations." },
        { name: "Arjun", role: "Patient", image: dr3, feedback: "MedPredeit gave me a clear picture of my health and what I need to improve. The insights are truly life-changing!" },
        { name: "Karan", role: "Patient", image: dr3, feedback: "With MedPredeit, I can monitor my health trends effortlessly. It’s a must-have for anyone serious about their well-being!" }
    ];

    const [currentIndex, setCurrentIndex] = useState(0);
    const [itemsPerView, setItemsPerView] = useState(1);

    useEffect(() => {
        const updateItemsPerView = () => {
            setItemsPerView(window.innerWidth >= 1024 ? 3 : 1);
        };
        updateItemsPerView();
        window.addEventListener("resize", updateItemsPerView);
        return () => window.removeEventListener("resize", updateItemsPerView);
    }, []);

    const handleSwipe = (direction: "left" | "right") => {
        if (direction === "left") {
            setCurrentIndex((prev) => (prev + itemsPerView) % testimonials.length);
        } else {
            setCurrentIndex((prev) => (prev - itemsPerView < 0 ? testimonials.length - itemsPerView : prev - itemsPerView));
        }
    };

    const swipeHandlers = useSwipeable({
        onSwipedLeft: () => handleSwipe("left"),
        onSwipedRight: () => handleSwipe("right"),
        trackTouch: true,
        trackMouse: true,
    });





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
    const [isVisible, setIsVisible] = useState(false);
    const sectionRef = useRef(null);

    useEffect(() => {
        const observer = new IntersectionObserver(
            ([entry]) => {
                setIsVisible(entry.isIntersecting);
            },
            { threshold: 0.3 }
        );

        if (sectionRef.current) {
            observer.observe(sectionRef.current);
        }

        return () => {
            if (sectionRef.current) {
                observer.unobserve(sectionRef.current);
            }
        };
    }, []);
    const fadeUpVariants = {
        hidden: { opacity: 0, y: 50 },
        visible: { opacity: 1, y: 0, transition: { duration: 1, ease: "easeOut" } },
    };

    const slideInVariants = {
        hidden: { opacity: 0, x: -100 },
        visible: { opacity: 1, x: 0, transition: { duration: 1, ease: "easeOut" } },
    };

    const faqs = [
        {
            question: " Is MedPredit a diagnostic tool?",
            answer: "No, MedPredit is designed for self-assessment and lifestyle tracking. It provides recommendations but does not replace professional medical advice. ",
        },
        {
            question: "Can I use MedPredit for my family? ",
            answer: " Yes! Our platform allows you to store and track health records for your entire family in one place.",
        },
        {
            question: "How often should I complete an assessment?",
            answer: "   We recommend taking the self-assessment regularly to monitor progress and adjust lifestyle habits accordingly. ",
        }, {
            question: "Is my data secure on MedPredit?",
            answer: "Absolutely! We prioritize your privacy and ensure all health data is securely stored and protected. ",
        },
        {
            question: "Does MedPredit provide medical advice? ",
            answer: "No, MedPredit provides health insights and lifestyle recommendations, but we always advise consulting a healthcare professional for medical concerns. ",
        },
    ];

    const [openIndex, setOpenIndex] = useState(0);

    const services = [
        {
            icon: icon1,
            title: "Comprehensive Health Check-ups",
            description: "Assessing fitness, stress, habits, diet, BMI, and sleep for overall well-being. ",
        },
        {
            icon: icon5,
            title: "Specialized Medical Consultations",
            description: "Expert guidance from specialists for personalized diagnosis and treatment.",
        },
        {
            icon: icon3,
            title: "Preventive & Wellness Programs",
            description: "Proactive health solutions to prevent illnesses and promote long-term well-being.",
        },
        {
            icon: icon4,
            title: "Telemedicine & Online Consultations",
            description: "Virtual consultations for accessible and convenient healthcare from anywhere.",
        },
        {
            icon: icon2,
            title: "Emergency & Urgent Care ",
            description: "Get immediate medical attention for urgent health concerns, emergencies, and critical medical situations. ",
        },
    ];
   


    return (
        <div className="bg-[#fff7f3]" >
            <div id="home" className="h-screen lg:h-[90vh] md:h-[80vh] bg-[#07332f] mt-0 p-6 md:p-12">
                <div className="mt-0 flex flex-col lg:flex-row items-center px-6 md:px-12">

                    {/* Left Side - Text Content */}
                    <motion.div
                        initial={{ opacity: 0, y: 50 }}
                        whileInView={{ opacity: 1, y: 0 }}
                        transition={{ duration: 1, ease: "easeOut" }}
                        viewport={{ once: true, amount: 0.2 }} // Works when scrolling down and up
                        className="w-full lg:w-1/2 text-center lg:text-left"
                    >
                        <p className="text-sm text-white tracking-widest uppercase">
                        Your Personal Health Tracker 
                        </p>
                        <h1 className="text-3xl md:text-4xl font-bold text-[#f89c7c] mt-2">
                        Seamless, secure, and smart your health companion anytime!
                        </h1>
                        <p className="text-white mt-4">
                        At MedPredeit, we provide top-tier medical care with compassion and excellence. Book your appointment today for trusted healthcare! 
                        </p>
                        {/* Buttons */}
                        <div className="mt-6 flex justify-center lg:justify-start space-x-4">
                            <button className="bg-[#f89c7c] text-white px-6 py-2 rounded-md shadow-lg hover:bg-[#e37c5e] transition">
                                Read More
                            </button>
                            <button className="flex items-center text-white">
                                <FaPlay className="mr-2" />
                                Watch Video
                            </button>
                        </div>
                    </motion.div>

                    {/* Right Side - Images */}
                    <motion.div
                        initial={{ opacity: 0, scale: 0.8 }}
                        whileInView={{ opacity: 1, scale: 1 }}
                        transition={{ duration: 1, ease: "easeOut" }}
                        viewport={{ once: true, amount: 0.2 }} // Works when scrolling down and up
                        style={{ backgroundImage: `url(${dot})` }}
                        className="w-full lg:w-1/2 flex justify-center lg:justify-end items-center mt-10 lg:mt-0 relative bg-no-repeat bg-contain bg-right"

                    >
                        <motion.img
                            src={dr1}
                            alt="Doctor 1"
                            initial={{ opacity: 0, x: -50 }}
                            whileInView={{ opacity: 1, x: 0 }}
                            transition={{ duration: 1, delay: 0.2 }}
                            viewport={{ once: true, amount: 0.2 }} // Works when scrolling down and up
                            className="w-40 h-60 md:w-48 md:h-72 lg:w-50 lg:h-88 object-cover mx-5 lg:mx-10 mt-10 lg:mt-20 rounded-[40%] shadow-lg"
                        />
                        <motion.img
                            src={dr2}
                            alt="Doctor 2"
                            initial={{ opacity: 0, x: 50 }}
                            whileInView={{ opacity: 1, x: 0 }}
                            transition={{ duration: 1, delay: 0.4 }}
                            viewport={{ once: true, amount: 0.2 }} // Works when scrolling down and up
                            className="w-40 h-60 md:w-48 md:h-72 lg:w-50 lg:h-88 object-cover rounded-[40%] shadow-lg"
                        />
                    </motion.div>
                </div>
            </div>


            <div className="bg-[#fef6f3] p-6 md:p-12 lg:p-25">
                {/* Top Section - Contact Info */}

                <div className="flex flex-wrap md:flex-nowrap">
                    {/* Contact Info Box */}
                    <motion.div
                        initial={{ opacity: 0, x: -50 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        transition={{ duration: 0.8, ease: "easeOut" }}
                        viewport={{ once: true, amount: 0.2 }} // ✅ Allows re-triggering on scroll
                        className="bg-[#f89c7c] flex flex-col text-white w-full md:w-1/3 lg:w-1/3 p-6 md:h-[250px] lg:h-[300px]"
                    >
                        <h3 className="text-2xl mt-5 md:mt-10 p-3 font-semibold">
                            Don't <span className="font-extrabold text-xl">Hesitate</span> To Contact Us
                        </h3>
                        <button className="flex flex-row justify-center mt-5 md:mt-10 items-center bg-black p-3 text-sm">
                            Make Appointment <FaRegCalendarAlt className="ml-2" />
                        </button>
                    </motion.div>

                    {/* Family Health Box */}
                    <motion.div
                        initial={{ opacity: 0, y: 50 }}
                        whileInView={{ opacity: 1, y: 0 }}
                        transition={{ duration: 0.8, delay: 0.2, ease: "easeOut" }}
                        viewport={{ once: true, amount: 0.2 }} // ✅ Allows animation when scrolling up or down
                        className="bg-[#07332f] p-6 text-white w-full md:w-1/3 lg:w-1/3 md:h-[250px] lg:h-[300px]"
                    >
                        <img src={img1} alt="logo" className="w-12 h-12" />
                        <h3 className="text-lg font-semibold mt-5">Need Family Health</h3>
                        <p className="text-sm mt-2 text-slate-300">
                            We understand the importance of family health & overall well-being.
                        </p>
                    </motion.div>

                    {/* 24 Hours Service Box */}
                    <motion.div
                        initial={{ opacity: 0, x: 50 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        transition={{ duration: 0.8, delay: 0.4, ease: "easeOut" }}
                        viewport={{ once: true, amount: 0.2 }} // ✅ Animation re-triggers when scrolling up or down
                        className="bg-[#07332f] p-6 text-white w-full md:w-1/3 lg:w-1/3 md:h-[250px] lg:h-[300px] border-t md:border-l md:border-t-0 border-white"
                    >
                        <img src={img1} alt="logo" className="w-12 h-12" />
                        <h3 className="text-lg font-semibold mt-5">24 Hours Service</h3>
                        <p className="text-sm mt-2 text-slate-300">
                            We take pride in offering 24-hour medical services to ensure that you.
                        </p>
                    </motion.div>
                </div>







                <div className="mt-20 flex flex-wrap lg:flex-row md:flex-col">
                    {/* Left - Images Section */}
                    <motion.div
                        initial={{ opacity: 0, x: -50 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        transition={{ duration: 0.8, ease: "easeOut" }}
                        viewport={{ amount: 0.2 }}
                        className="lg:w-1/2 md:w-full flex flex-col items-center relative"
                    >
                        {/* Background Pattern */}
                        <div
                            className="absolute inset-0 bg-no-repeat bg-contain bg-center lg:w-[80%] md:w-full"
                            style={{ backgroundImage: `url(${dot})` }}
                        ></div>

                        {/* Image Grid */}
                        <div className="grid grid-cols-2 gap-4 relative z-10">
                            {/* Doctor 1 - Large Image */}
                            <motion.img
                                initial={{ opacity: 0, scale: 0.9 }}
                                whileInView={{ opacity: 1, scale: 1 }}
                                transition={{ duration: 0.8, delay: 0.2 }}
                                viewport={{ amount: 0.2 }}
                                src={dr3}
                                alt="Doctor 3"
                                className="w-[250px] h-[300px] md:w-[200px] md:h-[300px] rounded-[40%] shadow-lg object-cover"
                            />

                            {/* Right Column */}
                            <div className="flex flex-col gap-6">
                                {/* Doctor 2 */}
                                <motion.img
                                    initial={{ opacity: 0, scale: 0.9 }}
                                    whileInView={{ opacity: 1, scale: 1 }}
                                    transition={{ duration: 0.8, delay: 0.4 }}
                                    viewport={{ amount: 0.2 }}
                                    src={dr4}
                                    alt="Doctor 4"
                                    className="w-[180px] h-[230px] md:w-[150px] md:h-[200px] rounded-[40%] shadow-lg object-cover"
                                />

                                {/* Watch Video Section */}
                                <motion.div
                                    initial={{ opacity: 0, y: 50 }}
                                    whileInView={{ opacity: 1, y: 0 }}
                                    transition={{ duration: 0.8, delay: 0.6 }}
                                    viewport={{ amount: 0.2 }}
                                    className="relative right-10 w-[200px] h-[120px] md:w-[160px] md:h-[100px] rounded-[40%] shadow-lg overflow-hidden"
                                >
                                    <img
                                        src={dr5}
                                        alt="Doctor 5"
                                        className="absolute  w-full h-full object-cover opacity-60"
                                    />
                                    {/* Overlay for Watch Video */}
                                    <div className="absolute inset-0 flex flex-row justify-center items-center text-white">
                                        <span className="text-3xl"><FaCirclePlay /></span>
                                        <p className="text-sm ml-2 font-semibold">Watch Video</p>
                                    </div>
                                </motion.div>
                            </div>
                        </div>
                    </motion.div>

                    {/* Right - Text Section */}
                    <motion.div id="about"
                        initial={{ opacity: 0, x: 50 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        transition={{ duration: 0.8, ease: "easeOut" }}
                        viewport={{ amount: 0.2 }}
                        className="lg:w-1/2 md:w-full px-10"
                    >
                        <h5 className="text-sm text-[#f89c7c] tracking-widest uppercase">
                            About Medicalife
                        </h5>
                        <h2 className="text-4xl font-bold text-[#07332f] mt-2">
                        Your Trusted Healthcare Partner
                        </h2>
                        <p className="text-gray-700 mt-4">
                        Take charge of your health with MedPredeit, a smart self-assessment tool. Track, improve, and secure your family’s health in one place! 
                        </p>

                        {/* Bullet Points */}
                        <ul className="mt-4 space-y-2">
                            <li className="flex items-center">
                                <FcApproval /> <span className="ml-2">Easy-to-use interface for seamless health tracking </span>
                            </li>
                            <li className="flex items-center">
                                <FcApproval /> <span className="ml-2">Secure storage for medical records </span>
                            </li>
                            <li className="flex items-center">
                                <FcApproval /> <span className="ml-2">Family health management under one account </span>
                            </li>
                            
                        </ul>

                        {/* Read More Button */}
                        <button className="mt-6 rounded-4xl border-2 border-[#f89c7c] text-[#f89c7c] px-6 py-2 shadow-lg active:bg-[#07332f] hover:bg-[#07332f] transition">
                            Read More
                        </button>
                    </motion.div>
                </div>





                <section id="services" className="bg-[#FFF7F5] py-16 px-10">
                    <div className="max-w-6xl mx-auto">
                        {/* Section Heading */}
                        <motion.div
                            initial={{ opacity: 0, y: -50 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            viewport={{ once: true, amount: 0.3 }}
                            transition={{ duration: 0.8, ease: "easeOut" }}
                            className="text-center mt-10"
                        >
                            <h3 className="text-[#D8927A] uppercase tracking-widest">
                                Medical Services
                            </h3>
                            <h2 className="text-4xl font-bold text-[#07332F]">
                           Simplify health tracking for your entire family with MedPredit!
                            </h2>
                        </motion.div>

                        {/* Service Cards */}
                        <div className="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-8 mt-10">
                            {services.map((service, index) => (
                                <motion.div
                                    key={index}
                                    initial={{
                                        opacity: 0,
                                        x: index % 2 === 0 ? -50 : 50, // Left or Right Animation
                                    }}
                                    whileInView={{ opacity: 1, x: 0 }}
                                    viewport={{ once: true, amount: 0.3 }}
                                    transition={{ duration: 0.8, ease: "easeOut" }}
                                    className="relative overflow-hidden group border shadow-md cursor-pointer"
                                >
                                    {/* Background Hover Effect */}
                                    <div className="absolute inset-0 bg-[#f7a582] origin-bottom scale-y-0 transition-transform duration-500 group-hover:scale-y-100"></div>

                                    <div className="relative p-6 flex flex-col items-center transition-all duration-300 z-10">
                                        <img style={{width:"20%",height:"50%"}} src={service.icon} alt="no Image" />
                                        <h3 className="text-xl text-center font-semibold mt-4 text-[#07332F] group-hover:text-white">
                                            {service.title}
                                        </h3>
                                        <p className="text-gray-600 text-center mt-2 group-hover:text-gray-200">
                                            {service.description}
                                        </p>
                                    </div>

                                    {/* Button */}
                                    <motion.a
                                        initial={{ opacity: 0, y: 30 }}
                                        whileInView={{ opacity: 1, y: 0 }}
                                        viewport={{ once: true, amount: 0.3 }}
                                        transition={{ duration: 0.2, delay: 0.1 }}
                                        className="relative bg-[#F4A38A] text-white text-center py-3 font-semibold flex justify-center items-center gap-2 transition-all duration-300 z-10 group-hover:text-[#07332F]"
                                    >
                                        Read More <FaArrowRight />
                                    </motion.a>
                                </motion.div>
                            ))}
                        </div>
                    </div>
                </section>

            </div>


            <section className="bg-[#002E2C] w-full p-6 md:p-10 lg:p-16">
                <div className="max-w-screen-xl mx-auto flex flex-col md:flex-row items-center justify-between gap-6 md:gap-10 lg:gap-16">
                    {/* Left Side (Icon & Text) */}
                    <motion.div
                        initial={{ opacity: 0, x: -50 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        viewport={{ once: true, amount: 0.3 }}
                        transition={{ duration: 0.8, ease: "easeOut" }}
                        className="flex items-center gap-4 w-full md:w-[65%]"
                    >
                        <div className="w-12 h-12">
                            <img src={suitcase} alt="case" className="object-contain w-full h-full" />
                        </div>
                        <div>
                            <h2 className="text-2xl md:text-3xl lg:text-4xl font-bold text-white">
                                Open For Appointments
                            </h2>
                            <p className="text-gray-300 mt-2 text-sm md:text-base lg:text-lg max-w-lg">
                                We are delighted to announce that our doors are open, and we are now accepting
                                appointments to serve you better.
                            </p>
                        </div>

                    </motion.div>

                    {/* Right Side (Button) */}
                    <motion.div
                        initial={{ opacity: 0, x: 50 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        viewport={{ once: true, amount: 0.3 }}
                        transition={{ duration: 0.8, ease: "easeOut" }}
                        className="w-full md:w-auto flex justify-center md:justify-end"
                    >
                        <button className="border border-[#F4A38A] text-[#F4A38A] px-6 py-3 rounded-full text-lg font-semibold flex items-center gap-2 hover:bg-[#F4A38A] hover:text-white transition-all duration-300">
                            Make Appointment <FaCalendarCheck />
                        </button>
                    </motion.div>
                </div>
            </section>





            <section className="bg-[#feefe9] px-6 py-16 md:px-10 lg:px-20">
                <div className="max-w-6xl mx-auto">
                    {/* Top Section */}
                    <motion.div
                        initial={{ opacity: 0, y: 50 }}
                        whileInView={{ opacity: 1, y: 0 }}
                        viewport={{ once: true, amount: 0.3 }}
                        transition={{ duration: 0.8, ease: "easeOut" }}
                        className="flex flex-col md:flex-row justify-between items-start gap-6 md:gap-12"
                    >
                        {/* Left Content */}
                        <div className="w-full md:w-1/2 lg:w-[40%]">
                            <p className="text-[#F4A38A] uppercase tracking-wide font-semibold">How We Work</p>
                            <h2 className="text-3xl md:text-4xl lg:text-5xl font-bold text-[#002E2C] mt-2 leading-tight">
                           Revolutionizing Healthcare at Your Fingertips
                            </h2>
                        </div>

                        {/* Right Description */}
                        <p className="w-full md:w-1/2 text-gray-600 text-sm md:text-base lg:text-lg">
                        Take the self-assessment to check your health, get your personalized score, and take action to enhance your well-being! 


                        </p>
                    </motion.div>

                    {/* Icons Section */}
                    <div className="mt-12 grid grid-cols-2 md:grid-cols-4 gap-8 text-center">
                        {[
                            { img: self, text: "Complete the Self-Assessment  " },
                            { img: score, text: "Receive Your Health Score  " },
                            { img: take, text: "Take Action  " },
                            { img: past, text: "View Past Health Records   " },
                        
                        ].map((item, index) => (
                            <motion.div
                                key={index}
                                initial={{ opacity: 0, scale: 0.8 }}
                                whileInView={{ opacity: 1, scale: 1 }}
                                viewport={{ once: true, amount: 0.3 }}
                                transition={{ duration: 0.5, delay: index * 0.2, ease: "easeOut" }}
                                className="hover:scale-105 transition-transform duration-300"
                            >
                                <img src={item.img} alt={item.text} style={{width:"40%",height:"30%"}} className=" md:w-24 md:h-24 mx-auto" />
                                <p className="mt-2 text-lg md:text-xl font-semibold text-[#002E2C]">{item.text}</p>
                            </motion.div>
                        ))}
                    </div>
                </div>
            </section>




            <section className="bg-[#FFF7F3] py-16 px-6 md:px-10 lg:px-20">
                <div className="max-w-6xl mx-auto flex flex-col md:flex-row gap-10 items-center">

                    {/* Left Side - Image & Stats */}
                    <motion.div
                        initial={{ opacity: 0, x: -50 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        viewport={{ once: true, amount: 0.3 }}
                        transition={{ duration: 0.8, ease: "easeOut" }}
                        className="relative w-full md:w-[45%] lg:w-[40%]"
                    >
                        <img src={grpdr} alt="Doctors" className="w-full rounded-lg shadow-lg" />

                        {/* Floating Stats */}
                        <motion.div
                            ref={sectionRef} // Attaching ref to track visibility
                            initial={{ opacity: 0, y: 30 }}
                            animate={isVisible ? { opacity: 1, y: 0 } : {}}
                            transition={{ duration: 0.8, ease: "easeOut", delay: 0.2 }}
                            className="absolute top-[80%] md:top-[90%] lg:top-[85%] right-0 flex gap-1"
                        >
                            <div className="bg-[#023E36] text-white p-6 md:p-8 lg:p-10 w-36 h-28 md:w-40 md:h-30 text-center">
                                <p className="text-3xl font-bold">
                                    {isVisible ? <CountUp start={0} end={100} duration={1} /> : "0"}+
                                </p>
                                <p className="text-sm">Doctors</p>
                            </div>
                            <div className="bg-[#F4A38A] text-white p-6 md:p-8 lg:p-10 w-36 h-28 md:w-40 md:h-30 text-center">
                                <p className="text-3xl font-bold">
                                    {isVisible ? <CountUp start={0} end={16} duration={1} /> : "0"}+
                                </p>
                                <p className="text-sm">World Office</p>
                            </div>
                        </motion.div>

                    </motion.div>

                    {/* Right Side - FAQ */}
                    <motion.div
                        initial={{ opacity: 0, x: 50 }}
                        whileInView={{ opacity: 1, x: 0 }}
                        viewport={{ once: true, amount: 0.3 }}
                        transition={{ duration: 0.8, ease: "easeOut" }}
                        className="w-full md:w-[50%] lg:w-[55%]"
                    >
                        <p className="text-[#F4A38A] text-xl md:text-2xl uppercase tracking-wide font-light">FAQs</p>
                        <h2 className="text-3xl md:text-4xl lg:text-5xl font-bold text-[#002E2C] mt-2 leading-tight">
                            Consultations with Qualified Doctors.
                        </h2>

                        {/* FAQ Section */}
                        <motion.div
                            initial={{ opacity: 0, y: 30 }}
                            whileInView={{ opacity: 1, y: 0 }}
                            viewport={{ once: true, amount: 0.3 }}
                            transition={{ duration: 0.8, ease: "easeOut", delay: 0.2 }}
                            className="mt-8 space-y-4"
                        >
                            {faqs.map((faq, index) => (
                                <motion.div
                                    key={index}
                                    className="pb-3"
                                    initial={{ opacity: 0, y: 10 }}
                                    whileInView={{ opacity: 1, y: 0 }}
                                    viewport={{ once: true, amount: 0.3 }}
                                    transition={{ duration: 0.5, delay: index * 0.2, ease: "easeOut" }}
                                >
                                    <button
                                        className="flex justify-between items-center w-full text-lg md:text-xl font-medium text-[#002E2C]"
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
                                </motion.div>
                            ))}
                        </motion.div>
                    </motion.div>
                </div>
            </section>

            <section className="bg-[#023E36] py-16 px-10">
            <div className="max-w-6xl mx-auto p-10">
                <p className="text-[#F4A38A] uppercase tracking-wide font-semibold">Testimonial</p>
                <h2 className="text-4xl font-bold text-white mt-2">What Patients Say About Us</h2>

                <div {...swipeHandlers} className="relative flex items-center justify-center mt-10">
                    <button className="absolute left-0 text-black rounded-full shadow-lg" onClick={() => handleSwipe("right")}>
                    <GrPrevious />
                    </button>
                    <div className="grid grid-cols-1 md:grid-cols-3 gap-4 transition-transform duration-300">
                        {testimonials.slice(currentIndex, currentIndex + itemsPerView).map((testimonial, index) => (
                            <div key={index} className="bg-white p-4 shadow-lg rounded-lg text-center">
                                <img src={testimonial.image} alt={testimonial.name} className="w-16 h-16 rounded-full mx-auto mb-3" />
                                <h4 className="font-bold">{testimonial.name}</h4>
                                <p className="text-gray-500">{testimonial.role}</p>
                                <p className="text-gray-700 mt-2">{testimonial.feedback}</p>
                            </div>
                        ))}
                    </div>
                    <button className="absolute right-0  text-black rounded-full shadow-lg" onClick={() => handleSwipe("left")}>
                    <GrNext />
                    </button>
                </div>
            </div>
        </section>


            <section id="pages" className="bg-[#fef6f2] mt-40 py-10 px-6">
                <div className="max-w-6xl mx-auto">
                    <h3 className="text-[#f7a582] text-lg font-extralight uppercase">Our Blog</h3>
                    <h2 className="text-3xl font-bold text-[#07332f] mt-2">Latest News & Articles.</h2>

                    {/* Grid Layout with Scroll Animation */}
                    <div className="mt-6 grid grid-cols-1 md:grid-cols-3 gap-10">
                        {articles.map((article, index) => (
                            <motion.div
                                key={index}
                                initial="hidden"
                                whileInView="visible"
                                viewport={{ once: true, amount: 0.3 }}
                                variants={fadeUpVariants}
                                className="bg-[#fef6f2] p-4"
                            >
                                <img
                                    src={article.image}
                                    alt={article.title}
                                    className="w-full h-48 object-cover rounded-md"
                                />
                                <h3 className="text-xl font-bold mt-5 text-gray-900">{article.title}</h3>
                                <p className="text-[#07332f] text-sm mt-5">{article.description}</p>
                                <a href={article.link} className="text-[#f7a582] font-extralight mt-2 inline-block">
                                    Read More →
                                </a>
                            </motion.div>
                        ))}
                    </div>
                </div>
            </section>


            <section
            id="contact"
                className="relative bg-cover bg-center py-16 px-6"
                style={{
                    backgroundImage: `url(${treatmentbg})`,
                    backgroundAttachment: "fixed",
                    backgroundSize: "cover",
                    backgroundPosition: "center",
                }}
            >
                <h3 className="text-lg font-medium text-center text-white uppercase tracking-wide">
                    Fill the Form
                </h3>
                <h2 className="text-3xl font-bold text-white text-center mb-6">
                    Contact Form
                </h2>

                <motion.div
                    initial="hidden"
                    whileInView="visible"
                    viewport={{ once: true, amount: 0.3 }}
                    variants={slideInVariants}
                    className="max-w-5xl mx-auto grid grid-cols-1 md:grid-cols-2 gap-6 bg-[#043d36] rounded-lg shadow-lg overflow-hidden"
                >
                    {/* Left Side - Info & Illustration */}
                    <div className="flex flex-col justify-center items-center bg-[#f7a582] text-center w-[80%]">
                        <img src={formimg} alt="Appointment" className="w-50 h-50 mb-4" />
                        <h2 className="text-2xl font-semibold text-white">Get in Touch</h2>
                        <p className="text-white text-lg mt-2">Have questions? We’re here to help!</p>
                        <p className="text-white text-lg font-medium mt-2">
                            Take charge of your health with <span className="font-bold">MedPredit!</span>
                        </p>
                    </div>

                    {/* Right Side - Form */}
                    <div className="p-8">
                        <form className="space-y-4">
                            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <input
                                    type="text"
                                    placeholder="Name"
                                    className="w-full p-3 bg-transparent border border-gray-600 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-[#f7a582]"
                                />
                                <input
                                    type="email"
                                    placeholder="Email"
                                    className="w-full p-3 bg-transparent border border-gray-600 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-[#f7a582]"
                                />
                            </div>
                            <div className="grid grid-cols-1 md:grid-cols-2 gap-4">
                                <input
                                    type="text"
                                    placeholder="Your Phone"
                                    className="w-full p-3 bg-transparent border border-gray-600 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-[#f7a582]"
                                />
                                <input
                                    type="date"
                                    className="w-full p-3 bg-transparent border border-gray-600 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-[#f7a582]"
                                />
                            </div>
                            <textarea
                                placeholder="Your Message"
                                rows={4}
                                className="w-full p-3 bg-transparent border border-gray-600 text-white rounded-md focus:outline-none focus:ring-2 focus:ring-[#f7a582]"
                            ></textarea>

                            <button className="w-[25%] p-3 bg-transparent border-2 border-[#f7a582] text-[#f7a582] rounded-full font-semibold hover:bg-white hover:text-[#f7a582] transition duration-300">
                                Send
                            </button>
                        </form>
                    </div>
                </motion.div>
            </section>
        </div>




    );
};

export default Home;
