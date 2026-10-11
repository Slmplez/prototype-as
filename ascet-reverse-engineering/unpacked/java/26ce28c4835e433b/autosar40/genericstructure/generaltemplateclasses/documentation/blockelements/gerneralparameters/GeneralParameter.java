/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.EList
 */
package autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters;

import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.PrmChar;
import autosar40.genericstructure.generaltemplateclasses.documentation.blockelements.gerneralparameters.Prms;
import autosar40.genericstructure.generaltemplateclasses.identifiable.Identifiable;
import org.eclipse.emf.common.util.EList;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface GeneralParameter
extends Identifiable {
    public Prms getPrms();

    public void setPrms(Prms var1);

    public EList<PrmChar> getPrmChars();
}

