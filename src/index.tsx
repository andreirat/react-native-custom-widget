import { NativeModules, Platform } from 'react-native';

const LINKING_ERROR =
  `The package 'react-native-custom-widget' doesn't seem to be linked. Make sure: \n\n` +
  Platform.select({ ios: "- You have run 'pod install'\n", default: '' }) +
  '- You rebuilt the app after installing the package\n' +
  '- You are not using Expo Go\n';

const CustomWidget = NativeModules.CustomWidget
  ? NativeModules.CustomWidget
  : new Proxy(
      {},
      {
        get() {
          throw new Error(LINKING_ERROR);
        },
      }
    );

export function multiply(a: number, b: number): Promise<number> {
  return CustomWidget.multiply(a, b);
}

/**
 * @description Changes in your app’s state may affect a widget’s timeline.
 * When this happens, you can tell WidgetKit to reload the timeline for either
 * a specific kind of widget or all widgets. For example, your app might register
 * for push notifications based on the widgets the user has configured.
 * When your app receives a push notification that changes the state for one or
 * more of your widgets, requesting a reload of their timelines updates their display.
 */
export const reloadAllTimelines = (CustomWidget.reloadAllTimelines ||
  (() => {})) as () => void;

/**
 * @description If you only need to reload a certain kind of widget,
 * you can request a reload for only that kind. For example, in response
 * to a push notification about a change in a game’s status, you could
 * request a reload for only the game status widgets:
 */
export const reloadTimelines = (CustomWidget.reloadTimelines || (() => {})) as (
  ofKind: string
) => void;

/**
 * Reads String values from UserDefaults database.
 *
 * @param key - Key
 * @param appGroup - App Group
 *
 */
export const getStringItem = (CustomWidget.getStringItem ||
  (() => {
    return Promise.resolve();
  })) as (key: string, appGroup: string) => Promise<string>;

/**
 * Reads Array values from UserDefaults database.
 *
 * @param key - Key
 * @param appGroup - App Group
 *
 */
export const getArrayItem = (CustomWidget.getArrayItem ||
  (() => {
    return Promise.resolve();
  })) as (key: string, appGroup: string) => Promise<Array<any>>;

/**
 * Reads Boolean values from UserDefaults database.
 *
 * @param key - Key
 * @param appGroup - App Group
 *
 */
export const getBoolValue = (CustomWidget.getArrayItem ||
  (() => {
    return Promise.resolve();
  })) as (key: string, appGroup: string) => Promise<Array<any>>;

/**
 * Writes Key-Value to UserDefaults database.
 *
 * @param key - Key
 * @param value - Value
 * @param appGroup - App Group
 *
 */
export const setItem = (CustomWidget.setItem ||
  (() => {
    return Promise.resolve();
  })) as (key: string, value: string, appGroup: string) => Promise<void>;
