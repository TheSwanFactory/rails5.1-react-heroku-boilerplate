import React from 'react';
import jquery from 'jquery';
import { expect } from 'chai';
import { shallow } from 'enzyme';
import { App } from '../../../app/components/app';

function setup() {
  const props = {

  };
  const enzymeWrapper = shallow(<App {...props} />);
  return {
    enzymeWrapper,
    props
  }
}

describe('App Component', () => {
  it('app should render', () => {
    const { enzymeWrapper } = setup();
    expect(enzymeWrapper).to.have.text('Welcome to MyRailsReactApp');
  });
});
