import React from "react";
import { Link } from "react-router-dom";

export default () => (
  <div className="vw-100 vh-100 primary-color d-flex align-items-center justify-content-center">
    <div className="jumbotron jumbotron-fluid bg-transparent">
      <div className="container secondary-color">
        <h1 className="display-4">HillSide Church</h1>
        <p className="lead">
          Create reports for Hillside church form data that is extracted from the planning center.
        </p>
        <hr className="my-4" />
        <Link
          to="/churchs"
          className="btn btn-lg custom-button"
          role="button"
        >
          View Reports
        </Link>
      </div>
    </div>
  </div>
);
//hillside-community-church-export-797425.csv'
