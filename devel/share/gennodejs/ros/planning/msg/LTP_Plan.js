// Auto-generated. Do not edit!

// (in-package planning.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class LTP_Plan {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pos_x_list = null;
      this.pos_y_list = null;
      this.vel_x_list = null;
      this.vel_y_list = null;
    }
    else {
      if (initObj.hasOwnProperty('pos_x_list')) {
        this.pos_x_list = initObj.pos_x_list
      }
      else {
        this.pos_x_list = [];
      }
      if (initObj.hasOwnProperty('pos_y_list')) {
        this.pos_y_list = initObj.pos_y_list
      }
      else {
        this.pos_y_list = [];
      }
      if (initObj.hasOwnProperty('vel_x_list')) {
        this.vel_x_list = initObj.vel_x_list
      }
      else {
        this.vel_x_list = [];
      }
      if (initObj.hasOwnProperty('vel_y_list')) {
        this.vel_y_list = initObj.vel_y_list
      }
      else {
        this.vel_y_list = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LTP_Plan
    // Serialize message field [pos_x_list]
    bufferOffset = _arraySerializer.float32(obj.pos_x_list, buffer, bufferOffset, null);
    // Serialize message field [pos_y_list]
    bufferOffset = _arraySerializer.float32(obj.pos_y_list, buffer, bufferOffset, null);
    // Serialize message field [vel_x_list]
    bufferOffset = _arraySerializer.float32(obj.vel_x_list, buffer, bufferOffset, null);
    // Serialize message field [vel_y_list]
    bufferOffset = _arraySerializer.float32(obj.vel_y_list, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LTP_Plan
    let len;
    let data = new LTP_Plan(null);
    // Deserialize message field [pos_x_list]
    data.pos_x_list = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [pos_y_list]
    data.pos_y_list = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [vel_x_list]
    data.vel_x_list = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [vel_y_list]
    data.vel_y_list = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.pos_x_list.length;
    length += 4 * object.pos_y_list.length;
    length += 4 * object.vel_x_list.length;
    length += 4 * object.vel_y_list.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'planning/LTP_Plan';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65ed2aaf51836053f56cfd7ad4d3b5d0';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] pos_x_list
    float32[] pos_y_list
    float32[] vel_x_list
    float32[] vel_y_list
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LTP_Plan(null);
    if (msg.pos_x_list !== undefined) {
      resolved.pos_x_list = msg.pos_x_list;
    }
    else {
      resolved.pos_x_list = []
    }

    if (msg.pos_y_list !== undefined) {
      resolved.pos_y_list = msg.pos_y_list;
    }
    else {
      resolved.pos_y_list = []
    }

    if (msg.vel_x_list !== undefined) {
      resolved.vel_x_list = msg.vel_x_list;
    }
    else {
      resolved.vel_x_list = []
    }

    if (msg.vel_y_list !== undefined) {
      resolved.vel_y_list = msg.vel_y_list;
    }
    else {
      resolved.vel_y_list = []
    }

    return resolved;
    }
};

module.exports = LTP_Plan;
