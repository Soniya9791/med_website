import React, { useState } from "react";
import { FaCalendarAlt } from "react-icons/fa";
import logo from "../../assets/images/logo.svg";

export default function Header() {
  const [isToggleOpen, setIsToggleOpen] = useState(false);
  const [active, setActive] = useState("Home"); // Default active menu item

  const menuItems = ["Home", "About Us", "Services", "Pages", "Contact Us"];

  return (
    <header className="w-full h-[10vh] bg-[#07332f] shadow-md">
      <div className="mx-auto max-w-7xl px-10 py-10 flex justify-between items-center">
        {/* Logo */}
        <a href="#" className="flex items-center space-x-2">
          <img src={logo} alt="Logo" className="h-15" />
        </a>

        {/* Desktop Navigation */}
        <nav className="hidden lg:flex space-x-8 text-lg">
          {menuItems.map((item) => (
            <a
              key={item}
              href="#"
              className={`transition ${
                active === item ? "text-[#F7A582]" : "text-white"
              } hover:text-[#F7A582]`}
              onClick={() => setActive(item)}
            >
              {item}
            </a>
          ))}
        </nav>

        {/* Book Appointment Button */}
        <div className="hidden w-[20%] lg:flex items-center">
          <button className="flex w-[100%] items-center space-x-2 border-2 border-[#F7A582] text-[#F7A582] p-3 px-10 rounded-full transition hover:bg-[#F7A582] hover:text-white">
            <span>Book<br />Appointment</span>
            <FaCalendarAlt />
          </button>
        </div>

        {/* Mobile Menu Button */}
        <button
          className="lg:hidden text-white focus:outline-none"
          onClick={() => setIsToggleOpen(!isToggleOpen)}
        >
          ☰
        </button>

        {/* Mobile Menu */}
        {isToggleOpen && (
          <div className="absolute top-16 left-0 w-full bg-[#07332f] text-white flex flex-col items-center py-4 space-y-4 lg:hidden">
            {menuItems.map((item) => (
              <a
                key={item}
                href="#"
                className={`transition ${
                  active === item ? "text-[#F7A582]" : "text-white"
                } hover:text-[#F7A582]`}
                onClick={() => {
                  setActive(item);
                  setIsToggleOpen(false); // Close menu on selection
                }}
              >
                {item}
              </a>
            ))}
            <button className="flex items-center space-x-2 border-2 border-[#F7A582] text-[#F7A582] px-4 py-2 rounded-full transition hover:bg-[#F7A582] hover:text-white">
              <span>Book Appointment</span>
              <FaCalendarAlt />
            </button>
          </div>
        )}
      </div>
    </header>
  );
}
