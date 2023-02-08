import * as React from 'react';

import { StyleSheet, View, Text, TouchableOpacity } from 'react-native';
import {
  setItem,
  getStringItem,
  reloadAllTimelines,
  reloadTimelines,
} from 'react-native-custom-widget';

export default function App() {
  return (
    <View style={styles.container}>
      <TouchableOpacity
        style={styles.button}
        onPress={() => setItem('CUSTOM_KEY', 'Value', 'com.example.group.com')}
      >
        <Text style={styles.text}>SET ITEM</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.button}
        onPress={() => getStringItem('CUSTOM_KEY', 'com.example.group.com')}
      >
        <Text style={styles.text}>GET ITEM</Text>
      </TouchableOpacity>
      <TouchableOpacity style={styles.button} onPress={reloadAllTimelines}>
        <Text style={styles.text}>RELOAD ALL TIMELINES</Text>
      </TouchableOpacity>
      <TouchableOpacity
        style={styles.button}
        onPress={() => reloadTimelines('com.example.group.com')}
      >
        <Text style={styles.text}>RELOAD TIMELINES</Text>
      </TouchableOpacity>
    </View>
  );
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    alignItems: 'center',
    justifyContent: 'center',
  },
  button: {
    backgroundColor: 'black',
    paddingHorizontal: 16,
    paddingVertical: 20,
    borderRadius: 12,
    marginBottom: 4,
  },
  text: {
    color: 'white',
  },
  box: {
    width: 60,
    height: 60,
    marginVertical: 20,
  },
});
