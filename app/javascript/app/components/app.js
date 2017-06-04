import React, { Component } from 'react';
import { connect } from 'react-redux';

export class App extends Component {
  render() {
    return (
      <h1>Welcome to MyRailsReactApp</h1>
    )
  }
}

export default connect()(App);
