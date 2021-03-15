set define off
PROMPT >> Loading Exported Diagrams
PROMPT >> Loading Example "AA7 - Tutorial - Its about time"
begin
insert into flow_diagrams( dgrm_name, dgrm_version, dgrm_category, dgrm_last_update, dgrm_content )
 values (
'AA7 - Tutorial - Its about time',
0,
'Tutorials',
timestamp '2021-03-01 00:00:00.000000000 +00:00',
apex_string.join_clob(
  apex_t_varchar2(
  q'[<?xml version='1.0' encoding='UTF-8'?>]'
  , q'[<bpmn:definitions xmlns:xsi='http://www.w3.org/2001/XMLSchema-instance' xmlns:bpmn='http://www.omg.org/spec/BPMN/20100524/MODEL' xmlns:bpmndi='http://www.omg.org/spec/BPMN/20100524/DI' xmlns:dc='http://www.omg.org/spec/DD/20100524/DC' xmlns:di='http://www.omg.org/spec/DD/20100524/DI' id='Definitions_1wzb475' targetNamespace='http://bpmn.io/schema/bpmn' exporter='bpmn-js (https://demo.bpmn.io)' exporterVersion='7.2.0'>]'
  , q'[  <bpmn:process id='Process_AA7_Timers' name='AA7 - Tutorial - About time' isExecutable='false'>]'
  , q'[    <bpmn:documentation>Tutorials by Richard Allen.]'
  , q'[Flowquest Consulting.]'
  , q'[twitter: @FlowquestR</bpmn:documentation>]'
  , q'[    <bpmn:startEvent id='Event_0ilo2tn' name='Start'>]'
  , q'[      <bpmn:outgoing>Flow_12z4jdz</bpmn:outgoing>]'
  , q'[    </bpmn:startEvent>]'
  , q'[    <bpmn:task id='Activity_1o7iby2' name='A'>]'
  , q'[      <bpmn:incoming>Flow_12z4jdz</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0b5yj72</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_12z4jdz' sourceRef='Event_0ilo2tn' targetRef='Activity_1o7iby2' />]'
  , q'[    <bpmn:task id='Activity_16stv78' name='B'>]'
  , q'[      <bpmn:incoming>Flow_0b5yj72</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1l6l9o7</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0b5yj72' sourceRef='Activity_1o7iby2' targetRef='Activity_16stv78' />]'
  , q'[    <bpmn:task id='Activity_0yu8dd0' name='D'>]'
  , q'[      <bpmn:incoming>Flow_14h9jqa</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1dtmdza</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1l6l9o7' sourceRef='Activity_16stv78' targetRef='Event_0r62ngx' />]'
  , q'[    <bpmn:endEvent id='Event_15qkntc' name='End'>]'
  , q'[      <bpmn:incoming>Flow_1dtmdza</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1dtmdza' sourceRef='Activity_0yu8dd0' targetRef='Event_15qkntc' />]'
  , q'[    <bpmn:sequenceFlow id='Flow_14h9jqa' sourceRef='Event_0r62ngx' targetRef='Activity_0yu8dd0' />]'
  , q'[    <bpmn:task id='Activity_1ovx33p' name='Reminder&#10;Process'>]'
  , q'[      <bpmn:incoming>Flow_0b1o4si</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_0l2zovx</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0b1o4si' sourceRef='Timer_BE_1' targetRef='Activity_1ovx33p' />]'
  , q'[    <bpmn:endEvent id='Event_0u6iyrl'>]'
  , q'[      <bpmn:incoming>Flow_0l2zovx</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_0l2zovx' sourceRef='Activity_1ovx33p' targetRef='Event_0u6iyrl' />]'
  , q'[    <bpmn:task id='Activity_1uox4x1' name='Timeout Process'>]'
  , q'[      <bpmn:incoming>Flow_186qh2w</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_1mm3pdn</bpmn:outgoing>]'
  , q'[    </bpmn:task>]'
  , q'[    <bpmn:sequenceFlow id='Flow_186qh2w' sourceRef='Event_100vuz3' targetRef='Activity_1uox4x1' />]'
  , q'[    <bpmn:endEvent id='Event_1sxunbl' name='Timeout End'>]'
  , q'[      <bpmn:incoming>Flow_1mm3pdn</bpmn:incoming>]'
  , q'[    </bpmn:endEvent>]'
  , q'[    <bpmn:sequenceFlow id='Flow_1mm3pdn' sourceRef='Activity_1uox4x1' targetRef='Event_1sxunbl' />]'
  , q'[    <bpmn:boundaryEvent id='Timer_BE_1' name='Non Interrupting Timer Boundary Event (20s)' cancelActivity='false' attachedToRef='Activity_1o7iby2'>]'
  , q'[      <bpmn:outgoing>Flow_0b1o4si</bpmn:outgoing>]'
  , q'[      <bpmn:timerEventDefinition id='TimerEventDefinition_12rvdst'>]'
  , q'[        <bpmn:timeDuration xsi:type='bpmn:tFormalExpression'>PT20S</bpmn:timeDuration>]'
  , q'[      </bpmn:timerEventDefinition>]'
  , q'[    </bpmn:boundaryEvent>]'
  , q'[    <bpmn:boundaryEvent id='Event_100vuz3' name='Interrupting Timer Boundary Event (20s)' attachedToRef='Activity_0yu8dd0'>]'
  , q'[      <bpmn:outgoing>Flow_186qh2w</bpmn:outgoing>]'
  , q'[      <bpmn:timerEventDefinition id='TimerEventDefinition_0uxg5qu'>]'
  , q'[        <bpmn:timeDuration xsi:type='bpmn:tFormalExpression'>PT20S</bpmn:timeDuration>]'
  , q'[      </bpmn:timerEventDefinition>]'
  , q'[    </bpmn:boundaryEvent>]'
  , q'[    <bpmn:intermediateCatchEvent id='Event_0r62ngx' name='C&#10;Intermediate Timer Catch Event (20s)'>]'
  , q'[      <bpmn:incoming>Flow_1l6l9o7</bpmn:incoming>]'
  , q'[      <bpmn:outgoing>Flow_14h9jqa</bpmn:outgoing>]'
  , q'[      <bpmn:timerEventDefinition id='TimerEventDefinition_1yvpnqn'>]'
  , q'[        <bpmn:timeDuration xsi:type='bpmn:tFormalExpression'>PT20S</bpmn:timeDuration>]'
  , q'[      </bpmn:timerEventDefinition>]'
  , q'[    </bpmn:intermediateCatchEvent>]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_1wdez7y'>]'
  , q'[      <bpmn:text>Tutorial 7 - It's About Time!]'
  , q'[]'
  , q'[We can add timers to our models to add a delay, create a reminder, cause a time period to end, or force a process timeout.]'
  , q'[]'
  , q'[Task A has a Timer Boundary Event attached to it.  Notice the circles on the boundary event are dashed, not solid.  This means it is a non-interrupting timer.  Use this to send someone a reminder when they haven't completed a task after 2 days...]'
  , q'[]'
  , q'[Step C is a Timer Event.  This just stops the process until the timer fires.]'
  , q'[]'
  , q'[Step D has an Interrupting Timer Boundary Event attached.  An interrupting Boundary Event has a solid line.  When the timer fires, D is terminated &amp; the process moves forward from the Timer - to our Timeout Process.  Use this to implement processes that close input periods, etc.]'
  , q'[]'
  , q'[In the tutorial, all of the timers are set to 20 seconds.  Try going straight through the process A-&gt; B -&gt; C -&gt; D &amp; see what happens to the timers.  Then try going through it again slowly, waiting 30 seconds between steps so that the timers fire. ]'
  , q'[Use the Refresh button to see what's happened to the model.</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_1ilv47z' sourceRef='Activity_1o7iby2' targetRef='TextAnnotation_1wdez7y' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_1lvcb8y'>]'
  , q'[      <bpmn:text>Boundary Event Timers can be set on Tasks, userTasks, and SubProcesses.]'
  , q'[]'
  , q'[Timers can be set to a specific date/time, to a duration, or to cycle. ]'
  , q'[]'
  , q'[The specific date timers are easiest used if you substitute a Date process variable into the Timer Definition string, starting with release 5.0.1.</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0dpxqu1' sourceRef='Activity_0yu8dd0' targetRef='TextAnnotation_1lvcb8y' />]'
  , q'[    <bpmn:textAnnotation id='TextAnnotation_0ijxguz'>]'
  , q'[      <bpmn:text>Timers use the DBMS_SCHEDULER features of the database, and require the schema owner to have the CREATE JOB privilege in the database.]'
  , q'[]'
  , q'[The scheduler is not set up for you when you install Flows for APEX.  It's simple to do this, however - once you have a user with CREATE JOB, you have to execute 2 pl/sql procedures that are included in the F4A distribution - see this file in the distribution.  setup/DBMS_SCHEDULER_setup_for_timers.txt</bpmn:text>]'
  , q'[    </bpmn:textAnnotation>]'
  , q'[    <bpmn:association id='Association_0y95ijj' sourceRef='Timer_BE_1' targetRef='TextAnnotation_0ijxguz' />]'
  , q'[  </bpmn:process>]'
  , q'[  <bpmndi:BPMNDiagram id='BPMNDiagram_1'>]'
  , q'[    <bpmndi:BPMNPlane id='BPMNPlane_1' bpmnElement='Process_AA7_Timers'>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1mm3pdn_di' bpmnElement='Flow_1mm3pdn'>]'
  , q'[        <di:waypoint x='1000' y='190' />]'
  , q'[        <di:waypoint x='1052' y='190' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_186qh2w_di' bpmnElement='Flow_186qh2w'>]'
  , q'[        <di:waypoint x='830' y='252' />]'
  , q'[        <di:waypoint x='830' y='190' />]'
  , q'[        <di:waypoint x='900' y='190' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0l2zovx_di' bpmnElement='Flow_0l2zovx'>]'
  , q'[        <di:waypoint x='560' y='430' />]'
  , q'[        <di:waypoint x='612' y='430' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0b1o4si_di' bpmnElement='Flow_0b1o4si'>]'
  , q'[        <di:waypoint x='390' y='368' />]'
  , q'[        <di:waypoint x='390' y='430' />]'
  , q'[        <di:waypoint x='460' y='430' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_14h9jqa_di' bpmnElement='Flow_14h9jqa'>]'
  , q'[        <di:waypoint x='688' y='310' />]'
  , q'[        <di:waypoint x='770' y='310' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1dtmdza_di' bpmnElement='Flow_1dtmdza'>]'
  , q'[        <di:waypoint x='870' y='310' />]'
  , q'[        <di:waypoint x='922' y='310' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_1l6l9o7_di' bpmnElement='Flow_1l6l9o7'>]'
  , q'[        <di:waypoint x='590' y='310' />]'
  , q'[        <di:waypoint x='652' y='310' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_0b5yj72_di' bpmnElement='Flow_0b5yj72'>]'
  , q'[        <di:waypoint x='430' y='310' />]'
  , q'[        <di:waypoint x='490' y='310' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Flow_12z4jdz_di' bpmnElement='Flow_12z4jdz'>]'
  , q'[        <di:waypoint x='278' y='310' />]'
  , q'[        <di:waypoint x='330' y='310' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNShape id='Event_0ilo2tn_di' bpmnElement='Event_0ilo2tn'>]'
  , q'[        <dc:Bounds x='242' y='292' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='248' y='335' width='24' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1o7iby2_di' bpmnElement='Activity_1o7iby2'>]'
  , q'[        <dc:Bounds x='330' y='270' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_16stv78_di' bpmnElement='Activity_16stv78'>]'
  , q'[        <dc:Bounds x='490' y='270' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_0yu8dd0_di' bpmnElement='Activity_0yu8dd0'>]'
  , q'[        <dc:Bounds x='770' y='270' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_15qkntc_di' bpmnElement='Event_15qkntc'>]'
  , q'[        <dc:Bounds x='922' y='292' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='930' y='335' width='20' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1ovx33p_di' bpmnElement='Activity_1ovx33p'>]'
  , q'[        <dc:Bounds x='460' y='390' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_0u6iyrl_di' bpmnElement='Event_0u6iyrl'>]'
  , q'[        <dc:Bounds x='612' y='412' width='36' height='36' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Activity_1uox4x1_di' bpmnElement='Activity_1uox4x1'>]'
  , q'[        <dc:Bounds x='900' y='150' width='100' height='80' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_1sxunbl_di' bpmnElement='Event_1sxunbl'>]'
  , q'[        <dc:Bounds x='1052' y='172' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='1039' y='215' width='62' height='14' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_11f8gws_di' bpmnElement='Event_0r62ngx'>]'
  , q'[        <dc:Bounds x='652' y='292' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='639' y='335' width='62' height='53' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_1wdez7y_di' bpmnElement='TextAnnotation_1wdez7y'>]'
  , q'[        <dc:Bounds x='200' y='-120' width='1050' height='270' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_1lvcb8y_di' bpmnElement='TextAnnotation_1lvcb8y'>]'
  , q'[        <dc:Bounds x='890' y='410' width='350' height='138' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='TextAnnotation_0ijxguz_di' bpmnElement='TextAnnotation_0ijxguz'>]'
  , q'[        <dc:Bounds x='240' y='530' width='320' height='194' />]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_1jj5rvr_di' bpmnElement='Event_100vuz3'>]'
  , q'[        <dc:Bounds x='812' y='252' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='741' y='210' width='78' height='40' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNShape id='Event_1ak9s5r_di' bpmnElement='Timer_BE_1'>]'
  , q'[        <dc:Bounds x='372' y='332' width='36' height='36' />]'
  , q'[        <bpmndi:BPMNLabel>]'
  , q'[          <dc:Bounds x='300' y='375' width='79' height='40' />]'
  , q'[        </bpmndi:BPMNLabel>]'
  , q'[      </bpmndi:BPMNShape>]'
  , q'[      <bpmndi:BPMNEdge id='Association_1ilv47z_di' bpmnElement='Association_1ilv47z'>]'
  , q'[        <di:waypoint x='392' y='270' />]'
  , q'[        <di:waypoint x='424' y='150' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0dpxqu1_di' bpmnElement='Association_0dpxqu1'>]'
  , q'[        <di:waypoint x='861' y='350' />]'
  , q'[        <di:waypoint x='924' y='410' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[      <bpmndi:BPMNEdge id='Association_0y95ijj_di' bpmnElement='Association_0y95ijj'>]'
  , q'[        <di:waypoint x='389' y='368' />]'
  , q'[        <di:waypoint x='380' y='530' />]'
  , q'[      </bpmndi:BPMNEdge>]'
  , q'[    </bpmndi:BPMNPlane>]'
  , q'[  </bpmndi:BPMNDiagram>]'
  , q'[</bpmn:definitions>]'
  , q'[]'
  )
));
commit;
end;
/
 
PROMPT >> Example "AA7 - Tutorial - Its about time - v0" loaded.
PROMPT >> ========================================================
