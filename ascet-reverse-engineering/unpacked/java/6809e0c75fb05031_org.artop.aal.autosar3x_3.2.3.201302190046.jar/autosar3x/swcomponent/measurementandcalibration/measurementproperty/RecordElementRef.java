/*
 * Decompiled with CFR 0.152.
 */
package autosar3x.swcomponent.measurementandcalibration.measurementproperty;

import autosar3x.commonstructure.datadictionaryproxies.SwVariableRefProxy;
import autosar3x.swcomponent.measurementandcalibration.measurementproperty.instanceref.RecordElementRefRecordElement;

public interface RecordElementRef
extends SwVariableRefProxy {
    public RecordElementRefRecordElement getRecordElement();

    public void setRecordElement(RecordElementRefRecordElement var1);
}

