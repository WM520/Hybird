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
  NativeAppEventEmitter,
  NativeEventEmitter
} from 'react-native';

import MyView from  './MyView';
const MyViewManager = NativeModules.MyViewManager;
const  NotiClass = NativeModules.NotiClass;
const calendarManagerEmitter = new NativeEventEmitter(NotiClass);

export default class App extends Component<{}> {
  render() {
    return (
      <View style={styles.container}>
        <MyView  style={styles.map}>
        </MyView>
      </View>
    );
  }
  componentWillUnmount() {
    subscription.remove();
  }

  componentDidMount(){
    this.subscription = calendarManagerEmitter.addListener('SpotifyHelper',(data)=>this.initData(data));
  }

  initData(data) {
    // ajax 请求
    alert(data);
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
