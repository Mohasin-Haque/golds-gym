import React from 'react';
import { Route, Routes } from 'react-router-dom';
import { Box } from '@mui/material';


import './App.css';
import Navbar from './components/Navbar';
import ExcerciseDetail from './pages/ExerciseDetail';
import Home from './pages/Home';
import Footer from './components/Footer';


const App = () => {
  return (
    <Box width="400px" sx={{width: { x1: '1488px' }}} m="auto">
        <Navbar />
        <Routes>
    <Route path="/" element={<Home />} />
    <Route path="exercise/:id" element={<ExcerciseDetail />} />
        </Routes>
        <Footer />
    </Box>
  )
}

export default App