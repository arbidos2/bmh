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

class LightCommand {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
      this.custom_brightness = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = 0;
      }
      if (initObj.hasOwnProperty('custom_brightness')) {
        this.custom_brightness = initObj.custom_brightness
      }
      else {
        this.custom_brightness = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LightCommand
    // Serialize message field [mode]
    bufferOffset = _serializer.uint8(obj.mode, buffer, bufferOffset);
    // Serialize message field [custom_brightness]
    bufferOffset = _serializer.uint8(obj.custom_brightness, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LightCommand
    let len;
    let data = new LightCommand(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [custom_brightness]
    data.custom_brightness = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 2;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scout_mini_msgs/LightCommand';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4493bb75f5a760b5b3db3934d947b466';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 NC = 0
    uint8 NO = 1
    uint8 BL = 2
    uint8 CUSTOM = 3
    
    uint8 mode               # Lighting Mode
    uint8 custom_brightness  # Only for CUSTOM mode
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LightCommand(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = 0
    }

    if (msg.custom_brightness !== undefined) {
      resolved.custom_brightness = msg.custom_brightness;
    }
    else {
      resolved.custom_brightness = 0
    }

    return resolved;
    }
};

// Constants for message
LightCommand.Constants = {
  NC: 0,
  NO: 1,
  BL: 2,
  CUSTOM: 3,
}

module.exports = LightCommand;
