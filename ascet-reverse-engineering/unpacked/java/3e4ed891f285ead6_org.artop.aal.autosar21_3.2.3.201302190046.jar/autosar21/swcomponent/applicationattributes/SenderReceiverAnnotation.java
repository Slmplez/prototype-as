/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package autosar21.swcomponent.applicationattributes;

import autosar21.swcomponent.applicationattributes.PortAnnotation;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotationLimitTypeEnum;
import autosar21.swcomponent.applicationattributes.SenderReceiverAnnotationProcessingTypeEnum;
import autosar21.swcomponent.applicationattributes.instanceref.SenderReceiverAnnotationDataElement;
import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface SenderReceiverAnnotation
extends PortAnnotation {
    public Boolean getComputed();

    public void setComputed(Boolean var1);

    public void unsetComputed();

    public boolean isSetComputed();

    public SenderReceiverAnnotationLimitTypeEnum getLimitType();

    public void setLimitType(SenderReceiverAnnotationLimitTypeEnum var1);

    public void unsetLimitType();

    public boolean isSetLimitType();

    public SenderReceiverAnnotationProcessingTypeEnum getProcessingType();

    public void setProcessingType(SenderReceiverAnnotationProcessingTypeEnum var1);

    public void unsetProcessingType();

    public boolean isSetProcessingType();

    public SenderReceiverAnnotationDataElement getSenderReceiverAnnotation_dataElement();

    public void setSenderReceiverAnnotation_dataElement(SenderReceiverAnnotationDataElement var1);

    public boolean _portsinterfaceisaSenderReceiverInterface(DiagnosticChain var1, Map<Object, Object> var2);
}

