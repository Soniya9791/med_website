import { BrowserRouter as Router, Routes, Route } from "react-router-dom";

import Header from "../00_Header/Header";
import Footer from "../01_Footer/Footer";
import About from "../../Components/01_About/About";
import Service from "../../Components/02_Service/Service";
import Pages from "../../Components/03_Pages/Pages";
import Contact from "../../Components/05_Contact/Contact";
import Home from "../../Components/00_Home/Home";



function App() {


  return (
    <div>
      <Router>
        <Header />
        <Routes>
          <Route path="/" element={<Home />} />
          <Route path="/about" element={<About />} />
          <Route path="/class" element={<Service />} />
          <Route path="/gallery" element={<Pages />} />
          <Route path="/blog" element={<Contact />} />
        </Routes>
        <Footer />
      </Router>
    </div>
  )
}

export default App
