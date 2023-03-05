import { Router } from "express";
import { getProfile, Homepage, loginUser, RegisterUser, updateProfile } from "../Controller/authController";
import { VerifyToken } from "../Middlewares/VerifyToken";



const authrouter =Router()

authrouter.post('/register',RegisterUser)
authrouter.post('/login', loginUser)
authrouter.get('/user/:id', getProfile)
authrouter.get('/home',VerifyToken, Homepage)//protected Route
authrouter.put('/user/:id', updateProfile)

// authrouter.put('/user/:id',VerifyToken, updateProfile)
export default authrouter