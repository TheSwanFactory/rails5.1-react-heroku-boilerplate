import React, { Component } from 'react';
import { connect } from 'react-redux';


export class App extends Component {
  render() {
    return (
      <h1>HIGHER Performance</h1>
    )
  }
}

export default connect()(App);
