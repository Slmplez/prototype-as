/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 */
package autosar40.system.fibex.fibexcore.corecommunication;

import autosar40.commonstructure.constants.ValueSpecification;
import autosar40.commonstructure.datadefproperties.SwDataDefProps;
import autosar40.system.datamapping.DataTypePolicyEnum;
import autosar40.system.fibex.fibexcore.FibexElement;
import autosar40.system.fibex.fibexcore.corecommunication.ISignalProps;
import autosar40.system.fibex.fibexcore.corecommunication.SystemSignal;
import org.artop.aal.common.datatypes.IntegerDatatype;

public interface ISignal
extends FibexElement {
    public DataTypePolicyEnum getDataTypePolicy();

    public void setDataTypePolicy(DataTypePolicyEnum var1);

    public void unsetDataTypePolicy();

    public boolean isSetDataTypePolicy();

    public ISignalProps getISignalProps();

    public void setISignalProps(ISignalProps var1);

    public ValueSpecification getInitValue();

    public void setInitValue(ValueSpecification var1);

    public Integer getLength();

    public void setLength(Integer var1);

    public void unsetLength();

    public boolean isSetLength();

    public SwDataDefProps getNetworkRepresentationProps();

    public void setNetworkRepresentationProps(SwDataDefProps var1);

    public SystemSignal getSystemSignal();

    public void setSystemSignal(SystemSignal var1);

    public IntegerDatatype getLengthData();

    public void setLengthData(IntegerDatatype var1);
}

