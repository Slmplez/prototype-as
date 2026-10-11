/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator
 *  org.eclipse.emf.common.util.EList
 */
package autosar21.swcomponent.datatype.computationmethod;

import autosar21.genericstructure.infrastructure.ARObject;
import autosar21.swcomponent.datatype.valuemodel.Vf;
import gautosar.gswcomponents.gdatatype.gcomputationmethod.GCompuNominatorDenominator;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface CompuNominatorDenominator
extends ARObject,
GCompuNominatorDenominator {
    public EList<Vf> getVfs();

    public EList<String> getVs();

    public void unsetVs();

    public boolean isSetVs();
}

