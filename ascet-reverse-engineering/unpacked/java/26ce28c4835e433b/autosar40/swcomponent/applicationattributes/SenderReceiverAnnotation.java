/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar40.swcomponent.applicationattributes;

import autosar40.genericstructure.generaltemplateclasses.generalannotation.GeneralAnnotation;
import autosar40.swcomponent.applicationattributes.DataLimitKindEnum;
import autosar40.swcomponent.applicationattributes.ProcessingKindEnum;
import autosar40.swcomponent.components.PortPrototype;
import autosar40.swcomponent.datatype.dataprototypes.VariableDataPrototype;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SenderReceiverAnnotation
extends GeneralAnnotation {
    public PortPrototype getPortPrototype();

    public void setPortPrototype(PortPrototype var1);

    public Boolean getComputed();

    public void setComputed(Boolean var1);

    public void unsetComputed();

    public boolean isSetComputed();

    public VariableDataPrototype getDataElement();

    public void setDataElement(VariableDataPrototype var1);

    public DataLimitKindEnum getLimitKind();

    public void setLimitKind(DataLimitKindEnum var1);

    public void unsetLimitKind();

    public boolean isSetLimitKind();

    public ProcessingKindEnum getProcessingKind();

    public void setProcessingKind(ProcessingKindEnum var1);

    public void unsetProcessingKind();

    public boolean isSetProcessingKind();

    public boolean _portsinterfaceisaSenderReceiverInterface(DiagnosticChain var1, Map<Object, Object> var2);
}

