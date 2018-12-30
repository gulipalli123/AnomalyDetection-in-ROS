// Auto-generated. Do not edit!

// (in-package anomaly_detector.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class AnomolyData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.anomalyStatus = null;
      this.timeStamp = null;
    }
    else {
      if (initObj.hasOwnProperty('anomalyStatus')) {
        this.anomalyStatus = initObj.anomalyStatus
      }
      else {
        this.anomalyStatus = false;
      }
      if (initObj.hasOwnProperty('timeStamp')) {
        this.timeStamp = initObj.timeStamp
      }
      else {
        this.timeStamp = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AnomolyData
    // Serialize message field [anomalyStatus]
    bufferOffset = _serializer.bool(obj.anomalyStatus, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint64(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AnomolyData
    let len;
    let data = new AnomolyData(null);
    // Deserialize message field [anomalyStatus]
    data.anomalyStatus = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anomaly_detector/AnomolyData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '032f76a84fd0cd8e143318fdfb84e758';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool   anomalyStatus
    uint64 timeStamp
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AnomolyData(null);
    if (msg.anomalyStatus !== undefined) {
      resolved.anomalyStatus = msg.anomalyStatus;
    }
    else {
      resolved.anomalyStatus = false
    }

    if (msg.timeStamp !== undefined) {
      resolved.timeStamp = msg.timeStamp;
    }
    else {
      resolved.timeStamp = 0
    }

    return resolved;
    }
};

module.exports = AnomolyData;
