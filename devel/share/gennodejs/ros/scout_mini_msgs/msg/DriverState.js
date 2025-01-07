// Auto-generated. Do not edit!

// (in-package scout_mini_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DriverState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.driver_voltage = null;
      this.driver_temperature = null;
      this.communication_failure = null;
      this.low_supply_voltage = null;
      this.motor_over_temperature = null;
      this.driver_over_current = null;
      this.driver_over_temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('driver_voltage')) {
        this.driver_voltage = initObj.driver_voltage
      }
      else {
        this.driver_voltage = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('driver_temperature')) {
        this.driver_temperature = initObj.driver_temperature
      }
      else {
        this.driver_temperature = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('communication_failure')) {
        this.communication_failure = initObj.communication_failure
      }
      else {
        this.communication_failure = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('low_supply_voltage')) {
        this.low_supply_voltage = initObj.low_supply_voltage
      }
      else {
        this.low_supply_voltage = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('motor_over_temperature')) {
        this.motor_over_temperature = initObj.motor_over_temperature
      }
      else {
        this.motor_over_temperature = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('driver_over_current')) {
        this.driver_over_current = initObj.driver_over_current
      }
      else {
        this.driver_over_current = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('driver_over_temperature')) {
        this.driver_over_temperature = initObj.driver_over_temperature
      }
      else {
        this.driver_over_temperature = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DriverState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [driver_voltage] has the right length
    if (obj.driver_voltage.length !== 4) {
      throw new Error('Unable to serialize array field driver_voltage - length must be 4')
    }
    // Serialize message field [driver_voltage]
    bufferOffset = _arraySerializer.float64(obj.driver_voltage, buffer, bufferOffset, 4);
    // Check that the constant length array field [driver_temperature] has the right length
    if (obj.driver_temperature.length !== 4) {
      throw new Error('Unable to serialize array field driver_temperature - length must be 4')
    }
    // Serialize message field [driver_temperature]
    bufferOffset = _arraySerializer.int16(obj.driver_temperature, buffer, bufferOffset, 4);
    // Check that the constant length array field [communication_failure] has the right length
    if (obj.communication_failure.length !== 4) {
      throw new Error('Unable to serialize array field communication_failure - length must be 4')
    }
    // Serialize message field [communication_failure]
    bufferOffset = _arraySerializer.bool(obj.communication_failure, buffer, bufferOffset, 4);
    // Check that the constant length array field [low_supply_voltage] has the right length
    if (obj.low_supply_voltage.length !== 4) {
      throw new Error('Unable to serialize array field low_supply_voltage - length must be 4')
    }
    // Serialize message field [low_supply_voltage]
    bufferOffset = _arraySerializer.bool(obj.low_supply_voltage, buffer, bufferOffset, 4);
    // Check that the constant length array field [motor_over_temperature] has the right length
    if (obj.motor_over_temperature.length !== 4) {
      throw new Error('Unable to serialize array field motor_over_temperature - length must be 4')
    }
    // Serialize message field [motor_over_temperature]
    bufferOffset = _arraySerializer.bool(obj.motor_over_temperature, buffer, bufferOffset, 4);
    // Check that the constant length array field [driver_over_current] has the right length
    if (obj.driver_over_current.length !== 4) {
      throw new Error('Unable to serialize array field driver_over_current - length must be 4')
    }
    // Serialize message field [driver_over_current]
    bufferOffset = _arraySerializer.bool(obj.driver_over_current, buffer, bufferOffset, 4);
    // Check that the constant length array field [driver_over_temperature] has the right length
    if (obj.driver_over_temperature.length !== 4) {
      throw new Error('Unable to serialize array field driver_over_temperature - length must be 4')
    }
    // Serialize message field [driver_over_temperature]
    bufferOffset = _arraySerializer.bool(obj.driver_over_temperature, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DriverState
    let len;
    let data = new DriverState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [driver_voltage]
    data.driver_voltage = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [driver_temperature]
    data.driver_temperature = _arrayDeserializer.int16(buffer, bufferOffset, 4)
    // Deserialize message field [communication_failure]
    data.communication_failure = _arrayDeserializer.bool(buffer, bufferOffset, 4)
    // Deserialize message field [low_supply_voltage]
    data.low_supply_voltage = _arrayDeserializer.bool(buffer, bufferOffset, 4)
    // Deserialize message field [motor_over_temperature]
    data.motor_over_temperature = _arrayDeserializer.bool(buffer, bufferOffset, 4)
    // Deserialize message field [driver_over_current]
    data.driver_over_current = _arrayDeserializer.bool(buffer, bufferOffset, 4)
    // Deserialize message field [driver_over_temperature]
    data.driver_over_temperature = _arrayDeserializer.bool(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 60;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scout_mini_msgs/DriverState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '4cd26ec35543dae5ae577b0645d8050a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    float64[4] driver_voltage
    int16[4] driver_temperature
    bool[4] communication_failure
    bool[4] low_supply_voltage
    bool[4] motor_over_temperature
    bool[4] driver_over_current 
    bool[4] driver_over_temperature
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DriverState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.driver_voltage !== undefined) {
      resolved.driver_voltage = msg.driver_voltage;
    }
    else {
      resolved.driver_voltage = new Array(4).fill(0)
    }

    if (msg.driver_temperature !== undefined) {
      resolved.driver_temperature = msg.driver_temperature;
    }
    else {
      resolved.driver_temperature = new Array(4).fill(0)
    }

    if (msg.communication_failure !== undefined) {
      resolved.communication_failure = msg.communication_failure;
    }
    else {
      resolved.communication_failure = new Array(4).fill(0)
    }

    if (msg.low_supply_voltage !== undefined) {
      resolved.low_supply_voltage = msg.low_supply_voltage;
    }
    else {
      resolved.low_supply_voltage = new Array(4).fill(0)
    }

    if (msg.motor_over_temperature !== undefined) {
      resolved.motor_over_temperature = msg.motor_over_temperature;
    }
    else {
      resolved.motor_over_temperature = new Array(4).fill(0)
    }

    if (msg.driver_over_current !== undefined) {
      resolved.driver_over_current = msg.driver_over_current;
    }
    else {
      resolved.driver_over_current = new Array(4).fill(0)
    }

    if (msg.driver_over_temperature !== undefined) {
      resolved.driver_over_temperature = msg.driver_over_temperature;
    }
    else {
      resolved.driver_over_temperature = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = DriverState;
