/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb;

import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventOperationTypeEnum;
import autosar40.commonstructure.timing.timingdescription.timingdescriptionevents.tdeventvfb.TDEventVfb;
import autosar40.swcomponent.portinterface.ClientServerOperation;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface TDEventOperation
extends TDEventVfb {
    public ClientServerOperation getOperation();

    public void setOperation(ClientServerOperation var1);

    public TDEventOperationTypeEnum getTdEventOperationType();

    public void setTdEventOperationType(TDEventOperationTypeEnum var1);

    public void unsetTdEventOperationType();

    public boolean isSetTdEventOperationType();

    public boolean IfisExternalissettoTRUEtdEventOperationTypemustbeeitheroperationCalledoroperationCallResponseReceived(DiagnosticChain var1, Map<Object, Object> var2);
}

