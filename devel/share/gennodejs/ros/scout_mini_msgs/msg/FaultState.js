// Auto-generated. Do not edit!

// (in-package scout_mini_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class FaultState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.battery_under_voltage_failure = null;
      this.battery_under_voltage_alarm = null;
      this.loss_remote_control = null;
    }
    else {
      if (initObj.hasOwnProperty('battery_under_voltage_failure')) {
        this.battery_under_voltage_failure = initObj.battery_under_voltage_failure
      }
      else {
        this.battery_under_voltage_failure = false;
      }
      if (initObj.hasOwnProperty('battery_under_voltage_alarm')) {
        this.battery_under_voltage_alarm = initObj.battery_under_voltage_alarm
      }
      else {
        this.battery_under_voltage_alarm = false;
      }
      if (initObj.hasOwnProperty('loss_remote_control')) {
        this.loss_remote_control = initObj.loss_remote_control
      }
      else {
        this.loss_remote_control = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type FaultState
    // Serialize message field [battery_under_voltage_failure]
    bufferOffset = _serializer.bool(obj.battery_under_voltage_failure, buffer, bufferOffset);
    // Serialize message field [battery_under_voltage_alarm]
    bufferOffset = _serializer.bool(obj.battery_under_voltage_alarm, buffer, bufferOffset);
    // Serialize message field [loss_remote_control]
    bufferOffset = _serializer.bool(obj.loss_remote_control, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type FaultState
    let len;
    let data = new FaultState(null);
    // Deserialize message field [battery_under_voltage_failure]
    data.battery_under_voltage_failure = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [battery_under_voltage_alarm]
    data.battery_under_voltage_alarm = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [loss_remote_control]
    data.loss_remote_control = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scout_mini_msgs/FaultState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a52d9af2999a855a1496f62180e48a82';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool battery_under_voltage_failure
    bool battery_under_voltage_alarm 
    bool loss_remote_control
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new FaultState(null);
    if (msg.battery_under_voltage_failure !== undefined) {
      resolved.battery_under_voltage_failure = msg.battery_under_voltage_failure;
    }
    else {
      resolved.battery_under_voltage_failure = false
    }

    if (msg.battery_under_voltage_alarm !== undefined) {
      resolved.battery_under_voltage_alarm = msg.battery_under_voltage_alarm;
    }
    else {
      resolved.battery_under_voltage_alarm = false
    }

    if (msg.loss_remote_control !== undefined) {
      resolved.loss_remote_control = msg.loss_remote_control;
    }
    else {
      resolved.loss_remote_control = false
    }

    return resolved;
    }
};

module.exports = FaultState;
