/**
 * Sample React Native App
 * https://github.com/facebook/react-native
 * @flow
 */

import React, { Component } from 'react';
import {
  Platform,
  StyleSheet,
  Text,
  View,
  NativeModules,
  findNodeHandle,
  NativeAppEventEmitter
} from 'react-native';

import MyView from  './MyView';
const MyViewManager = NativeModules.MyViewManager;

export default class App extends Component<{}> {
  render() {
    return (
      <View style={styles.container}>
        <MyView  style={styles.map}>
        </MyView>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
    backgroundColor: '#F5FCFF',
  },
  map: {
    width: 414,
    height: 736
  }
});
