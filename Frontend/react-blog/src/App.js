import {
  createBrowserRouter,
  RouterProvider,
  //Route,
  Outlet,
} from "react-router-dom";
import Register from "./pages/Register"
import Login from "./pages/Login";
import Write from "./pages/Write";
import Home from "./pages/home";
import Single from "./pages/Single";
import Navbar from "./components/navbar"
import Footer from "./components/footer"
import "./style.scss"

const Layout = () => {
  return (
    <>
      <Navbar />
      <Outlet />
      <Footer />
    </>
  );
};

const router = createBrowserRouter([
  {
    path: "/",
    element: <Layout />,
    children: [
      {
        path: "/",
        element: <Home />,
      },
      {
        path: "/post/:id",
        element: <Single />,
      },
      {
        path: "/Write",
        element: <Write />,
      },
    ],
  },
  {
    path: "/Register",
    element: <Register />,
  },
  {
    path: "/Login",
    element: <Login />,
  },
]);

function App() {
  return (
    <div className="app">
      <div className="container">
        <RouterProvider router={router} />
      </div>
    </div>
  );
}

export default App;