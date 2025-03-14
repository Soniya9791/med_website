import React from 'react';
import { useInView } from 'react-intersection-observer';
import Home from '../00_Home/Home';

const ScrollAnimation: React.FC<{ children: React.ReactNode }> = ({ children }) => {
    const { ref, inView } = useInView({
        threshold: 0.1, // Trigger when 10% of the element is in view
        triggerOnce: true, // Only trigger once
    });

    return (
        <div
            ref={ref}
            className={`transition-opacity duration-700 ${inView ? 'opacity-100 translate-y-0' : 'opacity-0 translate-y-10'}`}
        >
          
        </div>
    );
};

export default ScrollAnimation;