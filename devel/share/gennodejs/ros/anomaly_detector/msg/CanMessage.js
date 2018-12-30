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

class CanMessage {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.msgId = null;
      this.vehicleSpeed = null;
      this.engineSpeed = null;
      this.driverDoorOpen = null;
      this.frontPassengerDoorOpen = null;
      this.rearLeftDoorOpen = null;
      this.rearRightDoorOpen = null;
      this.timeStamp = null;
    }
    else {
      if (initObj.hasOwnProperty('msgId')) {
        this.msgId = initObj.msgId
      }
      else {
        this.msgId = 0;
      }
      if (initObj.hasOwnProperty('vehicleSpeed')) {
        this.vehicleSpeed = initObj.vehicleSpeed
      }
      else {
        this.vehicleSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('engineSpeed')) {
        this.engineSpeed = initObj.engineSpeed
      }
      else {
        this.engineSpeed = 0.0;
      }
      if (initObj.hasOwnProperty('driverDoorOpen')) {
        this.driverDoorOpen = initObj.driverDoorOpen
      }
      else {
        this.driverDoorOpen = false;
      }
      if (initObj.hasOwnProperty('frontPassengerDoorOpen')) {
        this.frontPassengerDoorOpen = initObj.frontPassengerDoorOpen
      }
      else {
        this.frontPassengerDoorOpen = false;
      }
      if (initObj.hasOwnProperty('rearLeftDoorOpen')) {
        this.rearLeftDoorOpen = initObj.rearLeftDoorOpen
      }
      else {
        this.rearLeftDoorOpen = false;
      }
      if (initObj.hasOwnProperty('rearRightDoorOpen')) {
        this.rearRightDoorOpen = initObj.rearRightDoorOpen
      }
      else {
        this.rearRightDoorOpen = false;
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
    // Serializes a message object of type CanMessage
    // Serialize message field [msgId]
    bufferOffset = _serializer.uint8(obj.msgId, buffer, bufferOffset);
    // Serialize message field [vehicleSpeed]
    bufferOffset = _serializer.float64(obj.vehicleSpeed, buffer, bufferOffset);
    // Serialize message field [engineSpeed]
    bufferOffset = _serializer.float64(obj.engineSpeed, buffer, bufferOffset);
    // Serialize message field [driverDoorOpen]
    bufferOffset = _serializer.bool(obj.driverDoorOpen, buffer, bufferOffset);
    // Serialize message field [frontPassengerDoorOpen]
    bufferOffset = _serializer.bool(obj.frontPassengerDoorOpen, buffer, bufferOffset);
    // Serialize message field [rearLeftDoorOpen]
    bufferOffset = _serializer.bool(obj.rearLeftDoorOpen, buffer, bufferOffset);
    // Serialize message field [rearRightDoorOpen]
    bufferOffset = _serializer.bool(obj.rearRightDoorOpen, buffer, bufferOffset);
    // Serialize message field [timeStamp]
    bufferOffset = _serializer.uint64(obj.timeStamp, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CanMessage
    let len;
    let data = new CanMessage(null);
    // Deserialize message field [msgId]
    data.msgId = _deserializer.uint8(buffer, bufferOffset);
    // Deserialize message field [vehicleSpeed]
    data.vehicleSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [engineSpeed]
    data.engineSpeed = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [driverDoorOpen]
    data.driverDoorOpen = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [frontPassengerDoorOpen]
    data.frontPassengerDoorOpen = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rearLeftDoorOpen]
    data.rearLeftDoorOpen = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [rearRightDoorOpen]
    data.rearRightDoorOpen = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [timeStamp]
    data.timeStamp = _deserializer.uint64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 29;
  }

  static datatype() {
    // Returns string type for a message object
    return 'anomaly_detector/CanMessage';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0b86246e8a1593029168cc26c2e03152';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    uint8 msgId
    float64 vehicleSpeed
    float64 engineSpeed
    bool driverDoorOpen
    bool frontPassengerDoorOpen
    bool rearLeftDoorOpen
    bool rearRightDoorOpen
    uint64 timeStamp
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CanMessage(null);
    if (msg.msgId !== undefined) {
      resolved.msgId = msg.msgId;
    }
    else {
      resolved.msgId = 0
    }

    if (msg.vehicleSpeed !== undefined) {
      resolved.vehicleSpeed = msg.vehicleSpeed;
    }
    else {
      resolved.vehicleSpeed = 0.0
    }

    if (msg.engineSpeed !== undefined) {
      resolved.engineSpeed = msg.engineSpeed;
    }
    else {
      resolved.engineSpeed = 0.0
    }

    if (msg.driverDoorOpen !== undefined) {
      resolved.driverDoorOpen = msg.driverDoorOpen;
    }
    else {
      resolved.driverDoorOpen = false
    }

    if (msg.frontPassengerDoorOpen !== undefined) {
      resolved.frontPassengerDoorOpen = msg.frontPassengerDoorOpen;
    }
    else {
      resolved.frontPassengerDoorOpen = false
    }

    if (msg.rearLeftDoorOpen !== undefined) {
      resolved.rearLeftDoorOpen = msg.rearLeftDoorOpen;
    }
    else {
      resolved.rearLeftDoorOpen = false
    }

    if (msg.rearRightDoorOpen !== undefined) {
      resolved.rearRightDoorOpen = msg.rearRightDoorOpen;
    }
    else {
      resolved.rearRightDoorOpen = false
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

module.exports = CanMessage;
