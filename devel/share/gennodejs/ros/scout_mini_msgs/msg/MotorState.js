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

class MotorState {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.position = null;
      this.velocity = null;
      this.current = null;
      this.temperature = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('position')) {
        this.position = initObj.position
      }
      else {
        this.position = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('current')) {
        this.current = initObj.current
      }
      else {
        this.current = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('temperature')) {
        this.temperature = initObj.temperature
      }
      else {
        this.temperature = new Array(4).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MotorState
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Check that the constant length array field [name] has the right length
    if (obj.name.length !== 4) {
      throw new Error('Unable to serialize array field name - length must be 4')
    }
    // Serialize message field [name]
    bufferOffset = _arraySerializer.string(obj.name, buffer, bufferOffset, 4);
    // Check that the constant length array field [position] has the right length
    if (obj.position.length !== 4) {
      throw new Error('Unable to serialize array field position - length must be 4')
    }
    // Serialize message field [position]
    bufferOffset = _arraySerializer.float64(obj.position, buffer, bufferOffset, 4);
    // Check that the constant length array field [velocity] has the right length
    if (obj.velocity.length !== 4) {
      throw new Error('Unable to serialize array field velocity - length must be 4')
    }
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, 4);
    // Check that the constant length array field [current] has the right length
    if (obj.current.length !== 4) {
      throw new Error('Unable to serialize array field current - length must be 4')
    }
    // Serialize message field [current]
    bufferOffset = _arraySerializer.float64(obj.current, buffer, bufferOffset, 4);
    // Check that the constant length array field [temperature] has the right length
    if (obj.temperature.length !== 4) {
      throw new Error('Unable to serialize array field temperature - length must be 4')
    }
    // Serialize message field [temperature]
    bufferOffset = _arraySerializer.int16(obj.temperature, buffer, bufferOffset, 4);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MotorState
    let len;
    let data = new MotorState(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _arrayDeserializer.string(buffer, bufferOffset, 4)
    // Deserialize message field [position]
    data.position = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [current]
    data.current = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [temperature]
    data.temperature = _arrayDeserializer.int16(buffer, bufferOffset, 4)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 104;
  }

  static datatype() {
    // Returns string type for a message object
    return 'scout_mini_msgs/MotorState';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '07febe0f25b8ad0f3f0891ded3888a7a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    
    # Joint name
    string[4] name
    
    # The actual position by the encoder value (rad)
    float64[4] position
    
    # The actual velocity measured by the encoder as the actual RPM value (rad/s)
    float64[4] velocity
    
    # The current flowing through the motor (A)
    float64[4] current
    
    # The actual temperature of motor (C)
    int16[4] temperature   
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
    const resolved = new MotorState(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = new Array(4).fill(0)
    }

    if (msg.position !== undefined) {
      resolved.position = msg.position;
    }
    else {
      resolved.position = new Array(4).fill(0)
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = new Array(4).fill(0)
    }

    if (msg.current !== undefined) {
      resolved.current = msg.current;
    }
    else {
      resolved.current = new Array(4).fill(0)
    }

    if (msg.temperature !== undefined) {
      resolved.temperature = msg.temperature;
    }
    else {
      resolved.temperature = new Array(4).fill(0)
    }

    return resolved;
    }
};

module.exports = MotorState;
