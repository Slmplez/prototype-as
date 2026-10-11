/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GIdentifiable
 *  org.eclipse.emf.common.util.Enumerator
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EClassifier
 *  org.eclipse.emf.ecore.EDataType
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.util.FeatureMap
 *  org.eclipse.emf.transaction.TransactionalEditingDomain
 *  org.eclipse.sphinx.emf.util.EObjectUtil
 *  org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil
 *  org.eclipse.sphinx.emf.util.WorkspaceTransactionUtil
 */
package org.artop.aal.common.util;

import gautosar.ggenericstructure.ginfrastructure.GIdentifiable;
import java.util.List;
import java.util.UUID;
import org.eclipse.emf.common.util.Enumerator;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EClassifier;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.util.FeatureMap;
import org.eclipse.emf.transaction.TransactionalEditingDomain;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.eclipse.sphinx.emf.util.WorkspaceEditingDomainUtil;
import org.eclipse.sphinx.emf.util.WorkspaceTransactionUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class IdentifiableUtil {
    public static final String L_FOR_ALL = "FOR-ALL";
    public static final String L_FR = "FR";
    public static final String L_EN = "EN";

    public static boolean isIdentifiable(Object object) {
        return object instanceof GIdentifiable;
    }

    public static boolean isIdentifiable(Class<?> type) {
        return GIdentifiable.class.isAssignableFrom(type);
    }

    public static String getShortName(Object identifiable) {
        if (identifiable instanceof GIdentifiable) {
            return ((GIdentifiable)identifiable).gGetShortName();
        }
        return "";
    }

    public static void setShortName(final Object identifiable, final String shortName) {
        if (identifiable instanceof GIdentifiable) {
            Runnable runnable = new Runnable(){

                public void run() {
                    ((GIdentifiable)identifiable).gSetShortName(shortName);
                }
            };
            TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain((Object)identifiable);
            if (editingDomain != null) {
                try {
                    WorkspaceTransactionUtil.executeInWriteTransaction((TransactionalEditingDomain)editingDomain, (Runnable)runnable, (String)"setShortName");
                }
                catch (Exception exception) {}
            } else {
                runnable.run();
            }
        }
    }

    public static String getUUID(Object identifiable) {
        if (identifiable instanceof GIdentifiable) {
            return ((GIdentifiable)identifiable).gGetUuid();
        }
        return "";
    }

    public static void setUUID(final Object identifiable, final String uuid) {
        if (identifiable instanceof GIdentifiable) {
            Runnable runnable = new Runnable(){

                public void run() {
                    ((GIdentifiable)identifiable).gSetUuid(uuid);
                }
            };
            TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain((Object)identifiable);
            if (editingDomain != null) {
                try {
                    WorkspaceTransactionUtil.executeInWriteTransaction((TransactionalEditingDomain)editingDomain, (Runnable)runnable, (String)"setUUID");
                }
                catch (Exception exception) {}
            } else {
                runnable.run();
            }
        }
    }

    public static String generateUUID() {
        return UUID.randomUUID().toString();
    }

    public static String getLongName(Object identifiable) {
        return IdentifiableUtil.getLongName(identifiable, L_FOR_ALL);
    }

    public static String getLongName(Object identifiable, String language) {
        EObject longNameObject;
        String longNameValue = "";
        EStructuralFeature longNameFeature = EObjectUtil.getEStructuralFeature((Object)identifiable, (String)"longName");
        if (longNameFeature != null && (longNameObject = (EObject)((EObject)identifiable).eGet(longNameFeature)) != null) {
            EStructuralFeature mixedFeature = EObjectUtil.getEStructuralFeature((Object)longNameObject, (String)"mixed");
            if (mixedFeature != null) {
                FeatureMap mixed = (FeatureMap)longNameObject.eGet(mixedFeature);
                longNameValue = String.valueOf(longNameValue) + EObjectUtil.getMixedText((FeatureMap)mixed);
            }
            EStructuralFeature l4sFeature = EObjectUtil.getEStructuralFeature((Object)longNameObject, (String)"l4s");
            List l4s = (List)longNameObject.eGet(l4sFeature);
            EObject matchingL4 = null;
            EObject forAll = null;
            for (EObject l4 : l4s) {
                EStructuralFeature lFeature = EObjectUtil.getEStructuralFeature((Object)l4, (String)"l");
                if (lFeature == null) continue;
                Enumerator l = (Enumerator)l4.eGet(lFeature);
                if (l != null && l.toString().equals(language)) {
                    matchingL4 = l4;
                    break;
                }
                if (l == null || !l.toString().equals(L_FOR_ALL)) continue;
                forAll = l4;
            }
            if (matchingL4 == null && !l4s.isEmpty() && forAll != null) {
                matchingL4 = forAll;
            }
            if (matchingL4 != null && (mixedFeature = EObjectUtil.getEStructuralFeature(matchingL4, (String)"mixed")) != null) {
                FeatureMap mixed = (FeatureMap)matchingL4.eGet(mixedFeature);
                longNameValue = String.valueOf(longNameValue) + EObjectUtil.getMixedText((FeatureMap)mixed);
            }
        }
        return longNameValue;
    }

    public static void setLongName(Object identifiable, String longName) {
        IdentifiableUtil.setLongName(identifiable, longName, L_FOR_ALL);
    }

    public static void setLongName(final Object identifiable, final String longName, String language) {
        if (language == null) {
            language = L_FOR_ALL;
        }
        final String fLanguage = language;
        Runnable runnable = new Runnable(){

            public void run() {
                EStructuralFeature longNameFeature = EObjectUtil.getEStructuralFeature((Object)identifiable, (String)"longName");
                if (longNameFeature != null) {
                    EStructuralFeature mixedFeature;
                    EObject longNameObject = (EObject)((EObject)identifiable).eGet(longNameFeature);
                    if (longNameObject == null) {
                        EClassifier longNameType = longNameFeature.getEType();
                        longNameObject = longNameType.getEPackage().getEFactoryInstance().create((EClass)longNameType);
                        ((EObject)identifiable).eSet(longNameFeature, (Object)longNameObject);
                    } else {
                        EStructuralFeature mixedFeature2 = EObjectUtil.getEStructuralFeature((Object)longNameObject, (String)"mixed");
                        if (mixedFeature2 != null) {
                            FeatureMap mixed = (FeatureMap)longNameObject.eGet(mixedFeature2);
                            mixed.clear();
                        }
                    }
                    EObject matchingL4 = null;
                    EStructuralFeature l4sFeature = EObjectUtil.getEStructuralFeature((Object)longNameObject, (String)"l4s");
                    List l4s = (List)longNameObject.eGet(l4sFeature);
                    for (EObject l4 : l4s) {
                        Enumerator l;
                        EStructuralFeature lFeature = EObjectUtil.getEStructuralFeature((Object)l4, (String)"l");
                        if (lFeature == null || (l = (Enumerator)l4.eGet(lFeature)) == null || !l.toString().equals(fLanguage)) continue;
                        matchingL4 = l4;
                        break;
                    }
                    if (matchingL4 == null) {
                        EClassifier lType;
                        Enumerator lValue;
                        EClassifier l4Type = l4sFeature.getEType();
                        matchingL4 = l4Type.getEPackage().getEFactoryInstance().create((EClass)l4Type);
                        EStructuralFeature lFeature = EObjectUtil.getEStructuralFeature((Object)matchingL4, (String)"l");
                        if (lFeature != null && (lValue = (Enumerator)(lType = lFeature.getEType()).getEPackage().getEFactoryInstance().createFromString((EDataType)lType, fLanguage)) != null) {
                            matchingL4.eSet(lFeature, (Object)lValue);
                        }
                        l4s.add(matchingL4);
                    }
                    if ((mixedFeature = EObjectUtil.getEStructuralFeature(matchingL4, (String)"mixed")) != null) {
                        FeatureMap mixed = (FeatureMap)matchingL4.eGet(mixedFeature);
                        EObjectUtil.setMixedText((FeatureMap)mixed, (String)longName);
                    }
                }
            }
        };
        TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain((Object)identifiable);
        if (editingDomain != null) {
            try {
                WorkspaceTransactionUtil.executeInWriteTransaction((TransactionalEditingDomain)editingDomain, (Runnable)runnable, (String)"setLongName");
            }
            catch (Exception exception) {}
        } else {
            runnable.run();
        }
    }

    public static String getDesc(Object identifiable) {
        return IdentifiableUtil.getDesc(identifiable, L_FOR_ALL);
    }

    public static String getDesc(Object identifiable, String language) {
        EObject descObject;
        String descValue = "";
        EStructuralFeature descFeature = EObjectUtil.getEStructuralFeature((Object)identifiable, (String)"desc");
        if (descFeature != null && (descObject = (EObject)((EObject)identifiable).eGet(descFeature)) != null) {
            EStructuralFeature mixedFeature = EObjectUtil.getEStructuralFeature((Object)descObject, (String)"mixed");
            if (mixedFeature != null) {
                FeatureMap mixed = (FeatureMap)descObject.eGet(mixedFeature);
                descValue = String.valueOf(descValue) + EObjectUtil.getMixedText((FeatureMap)mixed);
            }
            EStructuralFeature l2sFeature = EObjectUtil.getEStructuralFeature((Object)descObject, (String)"l2s");
            List l2s = (List)descObject.eGet(l2sFeature);
            EObject matchingL2 = null;
            EObject forAll = null;
            for (EObject l2 : l2s) {
                EStructuralFeature lFeature = EObjectUtil.getEStructuralFeature((Object)l2, (String)"l");
                if (lFeature == null) continue;
                Enumerator l = (Enumerator)l2.eGet(lFeature);
                if (l != null && l.toString().equals(language)) {
                    matchingL2 = l2;
                    break;
                }
                if (l == null || !l.toString().equals(L_FOR_ALL)) continue;
                forAll = l2;
            }
            if (matchingL2 == null && !l2s.isEmpty() && forAll != null) {
                matchingL2 = forAll;
            }
            if (matchingL2 != null && (mixedFeature = EObjectUtil.getEStructuralFeature(matchingL2, (String)"mixed")) != null) {
                FeatureMap mixed = (FeatureMap)matchingL2.eGet(mixedFeature);
                descValue = String.valueOf(descValue) + EObjectUtil.getMixedText((FeatureMap)mixed);
            }
        }
        return descValue;
    }

    public static void setDesc(Object identifiable, String desc) {
        IdentifiableUtil.setDesc(identifiable, desc, L_FOR_ALL);
    }

    public static void setDesc(final Object identifiable, final String desc, String language) {
        if (language == null) {
            language = L_FOR_ALL;
        }
        final String fLanguage = language;
        Runnable runnable = new Runnable(){

            public void run() {
                EStructuralFeature descFeature = EObjectUtil.getEStructuralFeature((Object)identifiable, (String)"desc");
                if (descFeature != null) {
                    EStructuralFeature mixedFeature;
                    Enumerator lValue;
                    EObject descObject = (EObject)((EObject)identifiable).eGet(descFeature);
                    if (descObject == null) {
                        EClassifier descType = descFeature.getEType();
                        descObject = descType.getEPackage().getEFactoryInstance().create((EClass)descType);
                        ((EObject)identifiable).eSet(descFeature, (Object)descObject);
                    } else {
                        EStructuralFeature mixedFeature2 = EObjectUtil.getEStructuralFeature((Object)descObject, (String)"mixed");
                        if (mixedFeature2 != null) {
                            FeatureMap mixed = (FeatureMap)descObject.eGet(mixedFeature2);
                            mixed.clear();
                        }
                    }
                    EObject matchingL2 = null;
                    EStructuralFeature l2sFeature = EObjectUtil.getEStructuralFeature((Object)descObject, (String)"l2s");
                    List l2s = (List)descObject.eGet(l2sFeature);
                    for (EObject l2 : l2s) {
                        EStructuralFeature lFeature = EObjectUtil.getEStructuralFeature((Object)l2, (String)"l");
                        if (lFeature == null || (lValue = (Enumerator)l2.eGet(lFeature)) == null || !lValue.toString().equals(fLanguage)) continue;
                        matchingL2 = l2;
                        break;
                    }
                    if (matchingL2 == null) {
                        EClassifier lType;
                        EClassifier l2Type = l2sFeature.getEType();
                        matchingL2 = l2Type.getEPackage().getEFactoryInstance().create((EClass)l2Type);
                        EStructuralFeature lFeature = EObjectUtil.getEStructuralFeature((Object)matchingL2, (String)"l");
                        if (lFeature != null && (lValue = (Enumerator)(lType = lFeature.getEType()).getEPackage().getEFactoryInstance().createFromString((EDataType)lType, fLanguage)) != null) {
                            matchingL2.eSet(lFeature, (Object)lValue);
                        }
                        l2s.add(matchingL2);
                    }
                    if ((mixedFeature = EObjectUtil.getEStructuralFeature(matchingL2, (String)"mixed")) != null) {
                        FeatureMap mixed = (FeatureMap)matchingL2.eGet(mixedFeature);
                        EObjectUtil.setMixedText((FeatureMap)mixed, (String)desc);
                    }
                }
            }
        };
        TransactionalEditingDomain editingDomain = WorkspaceEditingDomainUtil.getEditingDomain((Object)identifiable);
        if (editingDomain != null) {
            try {
                WorkspaceTransactionUtil.executeInWriteTransaction((TransactionalEditingDomain)editingDomain, (Runnable)runnable, (String)"setDesc");
            }
            catch (Exception exception) {}
        } else {
            runnable.run();
        }
    }
}

