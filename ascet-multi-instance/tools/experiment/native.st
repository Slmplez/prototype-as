[ | boundView boundEnvironment |
boundView := AaaManagement instance currentExperiment.
boundEnvironment := boundView isNil ifTrue: [nil] ifFalse: [boundView simController simEnvironment].
[:api :operation :input |
    | result out encode view controller environment simulator service stage errorCode errorText args token values readValue logger guard configurationStamp dataKind dataShape dataSnapshot |
    stage := operation.
    api handleExceptionsIn: [
        guard := [:condition :code | condition ifFalse: [stage := 'guard/', code. api error: code]].
        guard value: (api etasMainCtrl library location asLowercase = (input at: 1) asLowercase) value: 'DATABASE_CHANGED'.
        args := input copyFrom: 3 to: input size.
        view := AaaManagement instance currentExperiment.
        "Opening is the one operation allowed to transition from the closed state. All other operations remain bound to the experiment observed by the previous call."
        (operation = 'open' or: [boundView isNil and: [view isNil]]) ifFalse: [
            guard value: (view == boundView and: [view isNil or: [view simController simEnvironment == boundEnvironment]]) value: 'EXPERIMENT_CHANGED'
        ].
        token := view isNil ifTrue: ['closed'] ifFalse: [view identityHash printString, ':', view simController simEnvironment getExperimentLabel].
        guard value: ((input at: 2) isEmpty or: [(input at: 2) = token]) value: 'EXPERIMENT_CHANGED'.
        service := AaaExperimentInterface new.
        result := Dictionary new.
        view notNil ifTrue: [
            controller := view simController. environment := controller simEnvironment. simulator := controller simulator.
            (#('start_os' 'stop_os' 'start_measurement' 'stop_measurement') includes: operation)
                ifTrue: [guard value: environment isOffline not value: 'ONLINE_ONLY']
                ifFalse: [guard value: environment isOffline value: 'OFFLINE_ONLY']
        ].
        (#('inspect' 'catalog' 'open') includes: operation) ifFalse: [guard value: view notNil value: 'NO_EXPERIMENT'].
        (#('write' 'write_data' 'read_data' 'stimulus' 'event' 'create_stimulus' 'parameters' 'step' 'save') includes: operation) ifTrue: [
            guard value: (controller isSimPause or: [controller isSimOff]) value: 'REQUIRES_PAUSED_OR_STOPPED'
        ].
        (#('write' 'write_data') includes: operation) ifTrue: [guard value: controller isSimPause value: 'WRITE_REQUIRES_PAUSED_TO_PRESERVE_VALUES'].
        dataKind := [:data |
            (data isKindOf: RBTwoDStaticCharTable) ifTrue: ['map'] ifFalse: [
            (data isKindOf: RBOneDStaticCharTable) ifTrue: ['curve'] ifFalse: [
            (data isKindOf: RBDataMatrix) ifTrue: ['matrix'] ifFalse: [
            (data isKindOf: RBDataVector) ifTrue: ['array'] ifFalse: [
            data isVectoredType ifTrue: ['unsupported'] ifFalse: ['scalar']]]]]
        ].
        dataShape := [:data | | kind |
            kind := dataKind value: data.
            (#('map' 'matrix') includes: kind) ifTrue: [Array with: data xSize with: data ySize] ifFalse: [
            (#('curve' 'array') includes: kind) ifTrue: [Array with: data xSize] ifFalse: [Array new]]
        ].
        dataSnapshot := [:data | | kind shape rows axes |
            kind := dataKind value: data. shape := dataShape value: data.
            guard value: (#('array' 'matrix' 'curve' 'map') includes: kind) value: 'STRUCTURED_DATA_REQUIRED'.
            guard value: (shape first * (shape size = 2 ifTrue: [shape last] ifFalse: [1]) <= 4096) value: 'DATA_TOO_LARGE'.
            rows := OrderedCollection new. axes := Dictionary new.
            (#('curve' 'map') includes: kind) ifTrue: [
                data values readOnlineData. data xDistribution readOnlineData.
                axes at: 'xAxis' put: data getXValues asArray.
                kind = 'map' ifTrue: [data yDistribution readOnlineData. axes at: 'yAxis' put: data getYValues asArray]
            ] ifFalse: [data readOnlineData].
            1 to: shape first do: [:x |
                shape size = 2 ifTrue: [ | row | row := OrderedCollection new.
                    1 to: shape last do: [:y | row add: (kind = 'map' ifTrue: [data values physAt: x at: y] ifFalse: [data physAt: x at: y])]. rows add: row
                ] ifFalse: [rows add: (kind = 'curve' ifTrue: [data physValueAtIndex: x] ifFalse: [data physAt: x])]
            ].
            Dictionary new at: 'kind' put: kind; at: 'shape' put: shape; at: 'values' put: rows; at: 'axes' put: axes; yourself
        ].
        configurationStamp := [view isNil ifTrue: [''] ifFalse: [
            | stream |
            stream := WriteStream on: (String new: 1024).
            stream nextPutAll: simulator getConfig storeString.
            controller dataChannels keys asSortedCollection do: [:key |
                | channel |
                channel := controller dataChannels at: key.
                stream nextPutAll: key storeString; nextPut: $|; nextPutAll: channel mode storeString; nextPut: $|;
                    nextPutAll: channel offset storeString; nextPut: $|; nextPutAll: channel amplitude storeString; nextPut: $|;
                    nextPutAll: channel frequence storeString; nextPut: $|; nextPutAll: channel phase storeString; nextPut: $|
            ]. stream contents
        ]].
        AaaResult reset.
        operation = 'catalog' ifTrue: [
            | rows db exact query |
            rows := OrderedCollection new. db := api currentOpenedDatabase.
            query := (args at: 1) copyReplaceAll: '/' with: '\'.
            exact := nil.
            (query includes: $\) ifTrue: [
                exact := api etasMainCtrl getDatabaseItemByPath: query asPathname
            ].
            (exact notNil and: [exact isValidObject and: [exact isContainer not]]) ifTrue: [
                | item |
                item := exact getAPIHandle.
                rows add: (Dictionary new at: 'path' put: item getFolderPathName; at: 'oid' put: item getOID; yourself)
            ] ifFalse: [
            (db library queryExactForClassNames: RBTopFolder itemWithSpecClassNames) search do: [:key |
                | component item path |
                component := key getObjectIfUndefined: [:unused | nil].
                (component notNil and: [component isValidObject and: [component isContainer not]]) ifTrue: [
                    item := component getAPIHandle. path := item getFolderPathName.
                    (path asLowercase includesSubstring: query asLowercase) ifTrue: [
                        rows size < 200 ifTrue: [rows add: (Dictionary new at: 'path' put: path; at: 'oid' put: item getOID; yourself)]
                    ]
                ]
            ]]. result at: 'components' put: rows
        ].
        operation = 'open' ifTrue: [service openExperiment: (args at: 1) configuration: (args at: 2)].
        operation = 'close' ifTrue: [service closeExperiment].
        operation = 'start' ifTrue: [service startExperiment].
        operation = 'pause' ifTrue: [service pauseExperiment].
        operation = 'stop' ifTrue: [service stopExperiment].
        operation = 'start_os' ifTrue: [service startOperatingSystem].
        operation = 'stop_os' ifTrue: [service stopOperatingSystem].
        operation = 'start_measurement' ifTrue: [service startMeasurement].
        operation = 'stop_measurement' ifTrue: [service stopMeasurement].
        operation = 'parameters' ifTrue: [
            result at: 'transferableParameterCount' put: (controller getDAMOSLabelsSelectedOnly: false includeParameters: true includeNonVolatiles: true includeDependentParameters: true) dataElements size.
            (args at: 1) = 'reset_variables' ifTrue: [service reinitializeVariables].
            (args at: 1) = 'reset_parameters' ifTrue: [service reinitializeParameters].
            (args at: 1) = 'update_dependent' ifTrue: [service updateDependentParameters].
            (args at: 1) = 'load' ifTrue: [service loadParameters: (args at: 2)].
            (args at: 1) = 'save' ifTrue: [service saveParameters: (args at: 2)]
        ].
        operation = 'record' ifTrue: [
            logger := AaaManagement instance currentDataLogger.
            guard value: logger notNil value: 'NO_DATA_LOGGER'.
            (args at: 1) = 'set_output' ifTrue: [guard value: logger uiController logging not value: 'LOGGER_ACTIVE'].
            (args at: 1) = 'configure' ifTrue: [ | datas previous |
                guard value: (controller isSimPause or: [controller isSimOff]) value: 'REQUIRES_PAUSED_OR_STOPPED'.
                guard value: logger uiController logging not value: 'LOGGER_ACTIVE'.
                datas := OrderedCollection new. previous := OrderedCollection new.
                logger uiController logDatas do: [:old | environment labelTable keysAndValuesDo: [:label :node |
                    (node isReadable and: [(environment getSimInstanceForNode: node) == old]) ifTrue: [previous add: label]
                ]].
                guard value: (previous size = logger uiController getUsedChannels and: [previous size <= 128]) value: 'LOGGER_PREVIOUS_CHANNELS_NOT_RESTORABLE'.
                2 to: args size do: [:i | | data |
                    data := service getReadableDataElementForExperimentLabel: (args at: i).
                    guard value: (service getLastErrorNumber = 0 and: [(dataKind value: data) = 'scalar']) value: 'LOGGER_SCALAR_REQUIRED'.
                    guard value: (datas includes: data) not value: 'DUPLICATE_LOGGER_DATA'.
                    datas add: data
                ].
                service suppressDialogsAndExecInUI: [logger uiController removeAllLogData. logger uiController logDatas: (SortedCollection new sortBlock: [:a :b | a wName <= b wName]). datas do: [:data | logger uiController addLogData: data]].
                result at: 'previousChannels' put: previous.
                result at: 'channelsConfigured' put: (logger uiController getUsedChannels = datas size and: [datas allSatisfy: [:data | logger uiController logDatas includes: data]])
            ].
            (args at: 1) = 'set_output' ifTrue: [service setDataLoggerFile: (args at: 2)].
            (args at: 1) = 'start' ifTrue: [service startDataLogging].
            (args at: 1) = 'stop' ifTrue: [service stopDataLogging]
        ].
        (#('read_data' 'write_data') includes: operation) ifTrue: [ | data snapshot shape |
            data := operation = 'write_data' ifTrue: [service getWriteableDataElementForExperimentLabel: args first] ifFalse: [service getReadableDataElementForExperimentLabel: args first].
            guard value: (service getLastErrorNumber = 0) value: 'DATA_NOT_ACCESSIBLE'.
            snapshot := dataSnapshot value: data. shape := snapshot at: 'shape'.
            operation = 'write_data' ifTrue: [ | cells proposed seen continue kind |
                guard value: (shape first = (args at: 2) asNumber and: [(shape size = 2 ifTrue: [shape last] ifFalse: [0]) = (args at: 3) asNumber]) value: 'DATA_SHAPE_CHANGED'.
                cells := OrderedCollection new. proposed := Dictionary new. seen := Set new. kind := snapshot at: 'kind'.
                (snapshot at: 'axes') keysAndValuesDo: [:key :axis | proposed at: key put: axis copy].
                4 to: args size by: 4 do: [:i | | part x y value key target physical |
                    part := args at: i. x := (args at: i + 1) asNumber. y := (args at: i + 2) asNumber. value := (args at: i + 3) asFloat.
                    key := part, ':', x printString, ':', y printString.
                    guard value: (seen includes: key) not value: 'DUPLICATE_CELL'. seen add: key.
                    part = 'values' ifTrue: [
                        guard value: (x >= 0 and: [x < shape first and: [shape size = 2 ifTrue: [y >= 0 and: [y < shape last]] ifFalse: [y = -1]]]) value: 'CELL_INDEX_OUT_OF_BOUNDS'.
                        target := (#('curve' 'map') includes: kind) ifTrue: [data values] ifFalse: [data]
                    ] ifFalse: [
                        guard value: (proposed includesKey: part) value: 'AXIS_NOT_AVAILABLE'.
                        guard value: (y = -1 and: [x >= 0 and: [x < (proposed at: part) size]]) value: 'AXIS_INDEX_OUT_OF_BOUNDS'.
                        target := part = 'xAxis' ifTrue: [data xDistribution] ifFalse: [data yDistribution]
                    ].
                    guard value: (target getPhysInterval contains: value) value: 'VALUE_OUT_OF_INTERVAL'.
                    physical := target getPhysValue: (target getImplValue: value).
                    part ~= 'values' ifTrue: [(proposed at: part) at: x + 1 put: physical].
                    cells add: (Dictionary new at: 'part' put: part; at: 'x' put: x; at: 'y' put: y; at: 'requested' put: value; at: 'status' put: 'notAttempted'; yourself)
                ].
                proposed values do: [:axis | 2 to: axis size do: [:i | guard value: ((axis at: i) > (axis at: i - 1)) value: 'AXIS_MUST_INCREASE']].
                continue := true.
                cells do: [:cell | continue ifTrue: [ | part x y target |
                    part := cell at: 'part'. x := (cell at: 'x') + 1. y := (cell at: 'y') + 1.
                    api handleExceptionsIn: [
                        part = 'values' ifTrue: [
                            (#('curve' 'map') includes: kind) ifTrue: [target := data values] ifFalse: [target := data].
                            shape size = 2 ifTrue: [
                                target at: x at: y putPhys: (cell at: 'requested').
                                kind = 'map' ifTrue: [guard value: target write value: 'MAP_VALUE_WRITE_REJECTED'].
                                target readOnlineData. cell at: 'after' put: (target physAt: x at: y)
                            ] ifFalse: [target at: x putPhys: (cell at: 'requested'). target readOnlineData. cell at: 'after' put: (target physAt: x)]
                        ] ifFalse: [
                            target := part = 'xAxis' ifTrue: [data xDistribution] ifFalse: [data yDistribution].
                            target at: x putPhys: (cell at: 'requested'). target readOnlineData. cell at: 'after' put: (target physAt: x)
                        ].
                        guard value: ((cell at: 'after') = (target getPhysValue: (target getImplValue: (cell at: 'requested')))) value: 'CELL_NOT_PERSISTED'.
                        cell at: 'status' put: 'applied'
                    ] ifFail: [:e | cell at: 'status' put: 'failed'; at: 'error' put: e printString. continue := false]
                ]].
                result at: 'cells' put: cells.
                snapshot := dataSnapshot value: data.
                cells do: [:cell | (cell at: 'status') = 'applied' ifTrue: [ | actual part |
                    part := cell at: 'part'.
                    actual := part = 'values' ifTrue: [shape size = 2
                        ifTrue: [((snapshot at: 'values') at: (cell at: 'x') + 1) at: (cell at: 'y') + 1]
                        ifFalse: [(snapshot at: 'values') at: (cell at: 'x') + 1]]
                        ifFalse: [((snapshot at: 'axes') at: part) at: (cell at: 'x') + 1].
                    actual = (cell at: 'after') ifFalse: [cell at: 'status' put: 'failed'; at: 'error' put: 'CELL_READBACK_CHANGED'; at: 'after' put: actual]
                ]]
            ]. result at: 'data' put: snapshot. AaaResult reset
        ].
        readValue := [:label |
            | value |
            AaaResult reset.
            value := (args at: 1) = 'hex' ifTrue: [service readHexScalarValue: label] ifFalse: [service readPhysicalScalarValue: label].
            Dictionary new at: 'label' put: label; at: 'value' put: value asString;
                at: 'code' put: service getLastErrorNumber; at: 'message' put: service getLastErrorText; yourself
        ].
        operation = 'read' ifTrue: [
            2 to: args size do: [:i | | data |
                data := service getReadableDataElementForExperimentLabel: (args at: i).
                guard value: (service getLastErrorNumber = 0 and: [(dataKind value: data) = 'scalar']) value: 'SCALAR_READ_REQUIRED'
            ].
            result at: 'timeBefore' put: simulator actualSimTime.
            values := OrderedCollection new.
            2 to: args size do: [:i | values add: (readValue value: (args at: i))].
            result at: 'values' put: values
        ].
        operation = 'write' ifTrue: [
            | valid continue rows |
            valid := true. rows := OrderedCollection new.
            2 to: args size by: 2 do: [:i |
                | data |
                AaaResult reset. data := service getWriteableDataElementForExperimentLabel: (args at: i).
                service getLastErrorNumber ~= 0 ifTrue: [valid := false].
                service getLastErrorNumber = 0 ifTrue: [(dataKind value: data) ~= 'scalar' ifTrue: [valid := false]].
                rows add: (Dictionary new at: 'label' put: (args at: i); at: 'requested' put: (args at: i + 1);
                    at: 'validationCode' put: service getLastErrorNumber; at: 'status' put: 'notAttempted'; yourself)
            ].
            continue := valid.
            rows do: [:row | continue ifTrue: [
                | before after code message |
                before := readValue value: (row at: 'label'). row at: 'before' put: before.
                (before at: 'code') = 0 ifTrue: [
                    AaaResult reset.
                    (args at: 1) = 'hex'
                        ifTrue: [service writeHexScalarValue: (row at: 'label') value: (row at: 'requested')]
                        ifFalse: [service writePhysicalScalarValue: (row at: 'label') value: (row at: 'requested')].
                    code := service getLastErrorNumber. message := service getLastErrorText.
                    row at: 'code' put: code; at: 'message' put: message.
                    after := readValue value: (row at: 'label'). row at: 'after' put: after.
                    continue := code = 0 and: [(after at: 'code') = 0].
                    row at: 'status' put: (continue ifTrue: ['applied'] ifFalse: ['failed'])
                ] ifFalse: [row at: 'status' put: 'failed'. continue := false]
            ]].
            result at: 'writes' put: rows; at: 'validationPassed' put: valid.
            AaaResult reset
        ].
        operation = 'stimulus' ifTrue: [
            | channel |
            guard value: (configurationStamp value = (args at: 7)) value: 'CONFIGURATION_CHANGED'.
            channel := controller dataChannels at: (args at: 1) ifAbsent: [nil].
            guard value: channel notNil value: 'STIMULUS_CHANNEL_NOT_CONFIGURED'.
            guard value: channel isBool not value: 'BOOLEAN_STIMULUS_NOT_YET_SUPPORTED'.
            service suppressDialogsAndExecInUI: [
                channel mode: (args at: 2); offset: (args at: 3) asFloat;
                    amplitude: (args at: 4) asFloat; frequence: (args at: 5) asFloat; phase: (args at: 6) asFloat
            ]
        ].
        operation = 'event' ifTrue: [
            | config events event key value |
            guard value: (configurationStamp value = (args at: 1)) value: 'CONFIGURATION_CHANGED'.
            config := simulator getConfig. events := config at: 'EventSimChannels' ifAbsent: [nil].
            event := events isNil ifTrue: [nil] ifFalse: [events at: (args at: 2) ifAbsent: [nil]].
            guard value: event notNil value: 'EVENT_NOT_CONFIGURED'.
            3 to: args size by: 2 do: [:i |
                key := args at: i. value := args at: i + 1.
                guard value: (#('enabled' 'Delay' 'Phase' 'Prio' 'Mode') includes: key) value: 'EVENT_PROPERTY_NOT_ALLOWED'.
                key = 'enabled' ifTrue: [guard value: (#('true' 'false') includes: value asLowercase) value: 'INVALID_EVENT_BOOLEAN'. event at: key put: (value asLowercase = 'true')].
                key = 'Delay' ifTrue: [event at: key put: value asFloat].
                key = 'Phase' ifTrue: [event at: key put: value asFloat].
                key = 'Prio' ifTrue: [event at: key put: value asNumber].
                key = 'Mode' ifTrue: [event at: key put: value]
            ].
            simulator setConfig: config
        ].
        operation = 'create_stimulus' ifTrue: [
            | node data channel |
            guard value: (configurationStamp value = (args at: 1)) value: 'CONFIGURATION_CHANGED'.
            guard value: ((controller dataChannels includesKey: (args at: 2)) not) value: 'STIMULUS_CHANNEL_EXISTS'.
            node := environment labelTable at: (args at: 3) ifAbsent: [nil].
            guard value: node notNil value: 'SIGNAL_NOT_FOUND'.
            data := environment getSimInstanceForNode: node.
            guard value: ((dataKind value: data) = 'scalar') value: 'SCALAR_STIMULUS_ONLY'.
            service suppressDialogsAndExecInUI: [
                environment createDataChannel: (Association key: (args at: 2) value: node).
                channel := controller dataChannels at: (args at: 2).
                channel mode: (args at: 4); offset: (args at: 5) asFloat;
                    amplitude: (args at: 6) asFloat; frequence: (args at: 7) asFloat; phase: (args at: 8) asFloat
            ]
        ].
        operation = 'save' ifTrue: [
            | commit |
            args isEmpty ifFalse: [guard value: (configurationStamp value = (args at: 1)) value: 'CONFIGURATION_CHANGED'].
            commit := args isEmpty not and: [(args at: 2) = 'commit_database'].
            service suppressDialogsAndExecInUI: [
                environment saveExperiment isNil ifTrue: [api error: 'EXPERIMENT_SAVE_REJECTED'].
                commit ifTrue: [
                    | committed |
                    committed := api currentOpenedDatabase commitDatabase.
                    (committed isKindOf: EtasAPIDatabase) ifFalse: [api error: 'DATABASE_COMMIT_FAILED']
                ]
            ].
            result at: 'databaseCommitted' put: commit
        ].
        operation = 'step' ifTrue: [
            guard value: ((simulator getConfig at: 'EventSimChannels') values anySatisfy: [:event | event at: 'enabled']) value: 'NO_ENABLED_EVENTS'.
            service setStepMode: (args at: 1) stepValue: (args at: 2).
            service getLastErrorNumber = 0 ifTrue: [
                service suppressDialogsAndExecInUI: [view menuExperimentStep]
            ]
        ].
        errorCode := service getLastErrorNumber. errorText := service getLastErrorText.
        result at: 'nativeError' put: (Dictionary new at: 'code' put: errorCode; at: 'message' put: errorText; yourself).
        view := AaaManagement instance currentExperiment.
        boundView := view.
        boundEnvironment := view isNil ifTrue: [nil] ifFalse: [view simController simEnvironment].
        result at: 'token' put: (view isNil ifTrue: ['closed'] ifFalse: [view identityHash printString, ':', view simController simEnvironment getExperimentLabel]).
        result at: 'pid' put: OSCall new getCurrentProcessId;
            at: 'database' put: api etasMainCtrl library location;
            at: 'open' put: view notNil.
        view isNil ifFalse: [
            result at: 'viewClass' put: view class name asString.
            controller := view simController.
            environment := controller simEnvironment. simulator := controller simulator.
            result at: 'configuration' put: environment getExperimentLabel;
                at: 'componentPath' put: environment getTopClass getAPIHandle getFolderPathName;
                at: 'state' put: (controller isSimRun ifTrue: ['running'] ifFalse: [
                    controller isSimPause ifTrue: ['paused'] ifFalse: [
                    controller isSimStep ifTrue: ['stepping'] ifFalse: [
                    controller isSimOff ifTrue: ['stopped'] ifFalse: ['unknown']]]]);
                at: 'simTimeSeconds' put: simulator actualSimTime.
            operation = 'signals' ifTrue: [
                | rows labels offset limit count |
                rows := OrderedCollection new. count := 0.
                offset := (args at: 3) asNumber. limit := (args at: 4) asNumber.
                labels := environment labelTable keys asSortedCollection.
                labels do: [:label |
                    | node readable writable matches |
                    node := environment labelTable at: label.
                    readable := node isReadable and: [node isMeasureNode or: [node isCalibrationNode]].
                    writable := node isReadable and: [node isCalibrationNode].
                    matches := readable and: [(label asLowercase includesSubstring: (args at: 1) asLowercase) and: [
                        (args at: 2) ~= 'calibration' or: [writable]]].
                    matches ifTrue: [
                        (count >= offset and: [rows size < limit]) ifTrue: [
                            | data |
                            data := environment getSimInstanceForNode: node.
                            rows add: (Dictionary new at: 'label' put: label; at: 'displayLabel' put: label asASDSimLabel;
                                at: 'readable' put: readable; at: 'calibratable' put: writable;
                                at: 'dataKind' put: (dataKind value: data); at: 'shape' put: (dataShape value: data);
                                at: 'scalar' put: ((dataKind value: data) = 'scalar'); yourself)
                        ]. count := count + 1
                    ]
                ]. result at: 'signals' put: rows; at: 'total' put: count
            ].
            (#('configuration' 'stimulus' 'event' 'create_stimulus' 'save') includes: operation) ifTrue: [
                | channels |
                channels := OrderedCollection new.
                controller dataChannels keysAndValuesDo: [:name :channel |
                    channels add: (Dictionary new at: 'channel' put: name; at: 'mode' put: channel mode;
                        at: 'offset' put: channel offset; at: 'amplitude' put: channel amplitude;
                        at: 'frequencyHz' put: channel frequence; at: 'phase' put: channel phase; yourself)
                ].
                result at: 'events' put: simulator getConfig; at: 'stimuli' put: channels; at: 'configurationStamp' put: configurationStamp value
            ].
            logger := AaaManagement instance currentDataLogger.
            result at: 'recording' put: (logger isNil ifTrue: [Dictionary new at: 'available' put: false; yourself] ifFalse: [
                api handleExceptionsIn: [
                    Dictionary new at: 'available' put: true; at: 'logging' put: logger uiController logging;
                        at: 'file' put: logger uiController fileName; at: 'channelCount' put: logger uiController getUsedChannels; yourself
                ] ifFail: [:ignored | Dictionary new at: 'available' put: true; at: 'status' put: 'unknown'; yourself]
            ])
        ].
            out := WriteStream on: (String new: 16384).
    encode := [:x |
        x isNil ifTrue: [out nextPutAll: 'null'] ifFalse: [
        x isString ifTrue: [
            out nextPutAll: '{"$s":['.
            x asCebraString doWithIndex: [:byte :i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: byte printString].
            out nextPutAll: ']}'
        ] ifFalse: [
        ((x == true or: [x == false]) or: [x isInteger]) ifTrue: [out nextPutAll: x printString] ifFalse: [
        (x isKindOf: Dictionary) ifTrue: [
            | first |
            first := true. out nextPutAll: '{"$d":['.
            x keysAndValuesDo: [:key :value |
                first ifFalse: [out nextPut: $,]. first := false.
                out nextPut: $[. encode value: key. out nextPut: $,. encode value: value. out nextPut: $]
            ]. out nextPutAll: ']}'
        ] ifFalse: [
        (x isKindOf: Float) ifTrue: [
            | bytes |
            bytes := x asCebraString.
            out nextPutAll: '{"$f":['.
            1 to: bytes size do: [:i | i > 1 ifTrue: [out nextPut: $,]. out nextPutAll: (bytes at: i) printString].
            out nextPutAll: ']}'
        ] ifFalse: [
        x isCollection ifTrue: [
            | first |
            first := true. out nextPut: $[.
            x do: [:value | first ifFalse: [out nextPut: $,]. first := false. encode value: value]. out nextPut: $]
        ] ifFalse: [out nextPutAll: 'INVALID_VALUE']]]]]]
    ].
    encode value: result.
    out contents

    ] ifFail: [:error | 'EXP_ERROR: ', stage, ': ', error printString]
]
] value
