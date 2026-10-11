/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar3x.swcomponent.applicationattributes;

import autosar3x.genericstructure.commonpatterns.annotation.GeneralAnnotation;
import autosar3x.swcomponent.applicationattributes.LimitKind;
import autosar3x.swcomponent.applicationattributes.ProcessingKind;
import autosar3x.swcomponent.components.PortPrototype;
import autosar3x.swcomponent.portinterface.DataElementPrototype;
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

    public DataElementPrototype getDataElement();

    public void setDataElement(DataElementPrototype var1);

    public LimitKind getLimitKind();

    public void setLimitKind(LimitKind var1);

    public void unsetLimitKind();

    public boolean isSetLimitKind();

    public ProcessingKind getProcessingKind();

    public void setProcessingKind(ProcessingKind var1);

    public void unsetProcessingKind();

    public boolean isSetProcessingKind();

    public boolean _portsinterfaceisaSenderReceiverInterface(DiagnosticChain var1, Map<Object, Object> var2);
}

