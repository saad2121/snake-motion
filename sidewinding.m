 vrep=remApi('remoteApi');
 vrep.simxFinish(-1);
 clientID=vrep.simxStart('127.0.0.1',19997,true,true,5000,5);
  if (clientID>-1)
      disp('connected')
      
      %handle
      
      [returnCode,snake_joint_v1]=vrep.simxGetObjectHandle(clientID,'snake_joint_v1',vrep.simx_opmode_blocking);
      [returnCode,snake_joint_v2]=vrep.simxGetObjectHandle(clientID,'snake_joint_v2',vrep.simx_opmode_blocking);
      [returnCode,snake_joint_v3]=vrep.simxGetObjectHandle(clientID,'snake_joint_v3',vrep.simx_opmode_blocking);
      [returnCode,snake_joint_v4]=vrep.simxGetObjectHandle(clientID,'snake_joint_v4',vrep.simx_opmode_blocking);
      
      [returnCode,snake_joint_h1]=vrep.simxGetObjectHandle(clientID,'snake_joint_h1',vrep.simx_opmode_blocking);
      [returnCode,snake_joint_h2]=vrep.simxGetObjectHandle(clientID,'snake_joint_h2',vrep.simx_opmode_blocking);
      [returnCode,snake_joint_h3]=vrep.simxGetObjectHandle(clientID,'snake_joint_h3',vrep.simx_opmode_blocking);
      [returnCode,snake_joint_h4]=vrep.simxGetObjectHandle(clientID,'snake_joint_h4',vrep.simx_opmode_blocking);
      
          %code
      
      for t=1:100
           av1= (pi/3)*sin((pi/6)*t+1*2*pi/3);
           av2= (pi/3)*sin((pi/6)*t+3*2*pi/3);
           av3= (pi/3)*sin((pi/6)*t+5*2*pi/3);
           av4= (pi/3)*sin((pi/6)*t+7*2*pi/3);
           
           ah1= (pi/3)*sin((pi/6)*t+2*2*pi/3);
           ah2= (pi/3)*sin((pi/6)*t+4*2*pi/3);
           ah3= (pi/3)*sin((pi/6)*t+6*2*pi/3);
           ah4= (pi/3)*sin((pi/6)*t+8*2*pi/3);
           
      
      [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_v1,av1,vrep.simx_opmode_blocking);
      [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_v2,av2,vrep.simx_opmode_blocking);
      [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_v3,av3,vrep.simx_opmode_blocking);
      [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_v4,av4,vrep.simx_opmode_blocking);
      
      [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_h1,ah1,vrep.simx_opmode_blocking);
      [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_h2,ah2,vrep.simx_opmode_blocking);
      [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_h3,ah3,vrep.simx_opmode_blocking);
      [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_h4,ah4,vrep.simx_opmode_blocking);
      
      
         pause(0.1);
      end
      
       [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_v1,0,vrep.simx_opmode_blocking);
       [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_v2,0,vrep.simx_opmode_blocking);
       [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_v3,0,vrep.simx_opmode_blocking);
       [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_v4,0,vrep.simx_opmode_blocking);
       
       [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_h1,0,vrep.simx_opmode_blocking);
       [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_h2,0,vrep.simx_opmode_blocking);
       [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_h3,0,vrep.simx_opmode_blocking);
       [returnCode]=vrep.simxSetJointTargetPosition(clientID,snake_joint_h4,0,vrep.simx_opmode_blocking);
         vrep.simxFinish(-1);
  end
    vrep.delete();