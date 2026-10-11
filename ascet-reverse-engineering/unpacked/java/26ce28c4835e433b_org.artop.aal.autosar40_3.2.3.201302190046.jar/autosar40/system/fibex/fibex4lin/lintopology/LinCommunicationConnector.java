/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.artop.aal.common.datatypes.IntegerDatatype
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.system.fibex.fibex4lin.lintopology;

import autosar40.system.fibex.fibex4lin.lintopology.LinConfigurableFrame;
import autosar40.system.fibex.fibex4lin.lintopology.LinOrderedConfigurableFrame;
import autosar40.system.fibex.fibexcore.coretopology.CommunicationConnector;
import org.artop.aal.common.datatypes.IntegerDatatype;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface LinCommunicationConnector
extends CommunicationConnector {
    public Integer getInitialNad();

    public void setInitialNad(Integer var1);

    public void unsetInitialNad();

    public boolean isSetInitialNad();

    public EList<LinConfigurableFrame> getLinConfigurableFrames();

    public EList<LinOrderedConfigurableFrame> getLinOrderedConfigurableFrames();

    public IntegerDatatype getInitialNadData();

    public void setInitialNadData(IntegerDatatype var1);
}

