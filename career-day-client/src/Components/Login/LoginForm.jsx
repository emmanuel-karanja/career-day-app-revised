import React from 'react';
import { Formik} from 'formik';
import * as Yup from 'yup';
import PropTypes from 'prop-types';
import {Form} from 'react-bootstrap';


import {MyTextInput,
        MyStyledButton,
        MyStyledContainer,
        MyStyledForm,
  } from '../Common/MyFormComponents';


const loginSchema=Yup.object().shape({
   email: Yup.string()
             .email("*Must be a valid email address")
             .max(100, "*Email must be less than 100 characters")
              .required("*Email is required"),
   password: Yup.string()
            .min(6, "*Password must be at least 6 characters long")
            .required("*Password is required"), 
});

const LoginForm=(props)=>{
    return(
        <MyStyledContainer fluid>
            <Formik 
               initialValues={{
							   email:"",
							   password:"",   
                               }}
               validationSchema={loginSchema}
               onSubmit={(values, {setSubmitting, resetForm})=>{
                     setSubmitting(true);
                       props.login(values);	   
                       resetForm();
                       setSubmitting(false);
               }}
               >
                   {({handleSubmit, isSubmitting})=>(
                       <MyStyledForm onSubmit={handleSubmit} className="mx-auto">
                               <Form.Group>   
								<MyTextInput label="Email"
                                           name="email"
                                           type="email"
                                           placeholder="email..."/>
                                </Form.Group>
                                <Form.Group>
								<MyTextInput label="Password"
                                           name="password"
                                           type="password"
                                           placeholder="Password...."/>
                                </Form.Group>           
	                       <Form.Group>
                           <MyStyledButton variant="primary" type="submit"
                             disabled={isSubmitting}>Login</MyStyledButton>
                            </Form.Group>
                       </MyStyledForm>
                   )}
                   </Formik>
        </MyStyledContainer>
    );
}

 LoginForm.propTypes={
    login: PropTypes.func.isRequired,
    
}
export default LoginForm;