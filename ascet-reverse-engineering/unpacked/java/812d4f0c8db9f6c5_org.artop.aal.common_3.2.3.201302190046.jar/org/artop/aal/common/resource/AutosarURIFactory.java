/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  gautosar.ggenericstructure.ginfrastructure.GARPackage
 *  gautosar.ggenericstructure.ginfrastructure.GAUTOSAR
 *  gautosar.ggenericstructure.ginfrastructure.GReferrable
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.Plugin
 *  org.eclipse.emf.common.util.BasicDiagnostic
 *  org.eclipse.emf.common.util.Diagnostic
 *  org.eclipse.emf.common.util.EList
 *  org.eclipse.emf.common.util.URI
 *  org.eclipse.emf.ecore.EClass
 *  org.eclipse.emf.ecore.EObject
 *  org.eclipse.emf.ecore.EStructuralFeature
 *  org.eclipse.emf.ecore.InternalEObject
 *  org.eclipse.emf.ecore.util.EcoreUtil$ProperContentIterator
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.sphinx.emf.util.EObjectUtil
 *  org.eclipse.sphinx.platform.util.PlatformLogUtil
 */
package org.artop.aal.common.resource;

import gautosar.ggenericstructure.ginfrastructure.GARPackage;
import gautosar.ggenericstructure.ginfrastructure.GAUTOSAR;
import gautosar.ggenericstructure.ginfrastructure.GReferrable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.artop.aal.common.Activator;
import org.artop.aal.common.internal.messages.Messages;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.Plugin;
import org.eclipse.emf.common.util.BasicDiagnostic;
import org.eclipse.emf.common.util.Diagnostic;
import org.eclipse.emf.common.util.EList;
import org.eclipse.emf.common.util.URI;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.InternalEObject;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.osgi.util.NLS;
import org.eclipse.sphinx.emf.util.EObjectUtil;
import org.eclipse.sphinx.platform.util.PlatformLogUtil;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public final class AutosarURIFactory {
    public static final int DEPTH_INFINITE = 2;
    public static final int DEPTH_ONE = 1;
    public static final int DEPTH_ZERO = 0;
    public static final String AR_SCHEME = "ar";
    @Deprecated
    public static final String ARXML_SCHEME = "arxml";
    public static final String SCHEME_SEPARATOR = ":";
    public static final String SEGMENT_SEPARATOR = "/";
    public static final String QUERY_SEPARATOR = "?";
    public static final String FRAGMENT_SEPARATOR = "#";
    public static final String KEY_VALUE_SEPARATOR = "=";
    public static final String DESTINATION_TYPE_KEY = "type";
    public static final String NON_IDENTIFIABLE_SEGMENT_PREFIX = "@";
    public static final String AUTOSAR_TYPE_NAME = "AUTOSAR";
    public static final String AUTOSAR_ABSOLUTE_QUALIFIED_NAME_SEGMENT = "/";

    private static String createDestinationTypeSpecifier(String destinationTypeName) {
        if (destinationTypeName != null && destinationTypeName.length() > 0) {
            return "type=" + destinationTypeName;
        }
        return "";
    }

    public static String createURIFragment(String absoluteQualifiedName, String destinationTypeName) {
        String uriFragment = absoluteQualifiedName;
        String destinationTypeSpecifier = AutosarURIFactory.createDestinationTypeSpecifier(destinationTypeName);
        if (destinationTypeSpecifier.length() > 0) {
            uriFragment = String.valueOf(uriFragment) + QUERY_SEPARATOR + destinationTypeSpecifier;
        }
        return uriFragment;
    }

    public static URI createAutosarURI(String absoluteQualifiedName, String destinationTypeName) {
        String uriFragment = AutosarURIFactory.createURIFragment(absoluteQualifiedName, destinationTypeName);
        return AutosarURIFactory.createAutosarURI(uriFragment);
    }

    public static URI createAutosarURI(String uriFragment) {
        if (uriFragment != null && uriFragment.length() > 0) {
            return URI.createURI((String)("ar:/#" + uriFragment), (boolean)true);
        }
        return null;
    }

    public static String getAbsoluteQualifiedName(Object arObject) {
        return AutosarURIFactory.getAbsoluteQualifiedName(null, null, arObject);
    }

    public static String getAbsoluteQualifiedName(Object owner, EStructuralFeature feature, Object arObject) {
        if (!(arObject instanceof EObject)) {
            return "";
        }
        InternalEObject internalARObject = (InternalEObject)arObject;
        if (internalARObject.eIsProxy()) {
            String uriFragment = internalARObject.eProxyURI().fragment();
            if (uriFragment != null) {
                int queryStringIndex = uriFragment.indexOf(QUERY_SEPARATOR);
                return queryStringIndex != -1 ? uriFragment.substring(0, queryStringIndex) : uriFragment;
            }
            return "";
        }
        ArrayList<String> segments = new ArrayList<String>();
        InternalEObject currentARObject = internalARObject;
        InternalEObject currentContainer = internalARObject.eInternalContainer();
        while (currentContainer != null) {
            AutosarURIFactory.addURIFragmentSegment(segments, currentContainer, (EObject)currentARObject);
            currentARObject = currentContainer;
            currentContainer = currentARObject.eInternalContainer();
        }
        StringBuilder absoluteQualifiedName = new StringBuilder();
        if (currentARObject.eIsProxy()) {
            absoluteQualifiedName.append(AutosarURIFactory.getAbsoluteQualifiedName(currentARObject));
        } else {
            if (owner != null) {
                absoluteQualifiedName.append(AutosarURIFactory.getAbsoluteQualifiedName(owner));
            }
            AutosarURIFactory.addURIFragmentSegment(segments, (InternalEObject)owner, (EObject)currentARObject);
        }
        if (!segments.isEmpty()) {
            Collections.reverse(segments);
            if (absoluteQualifiedName.length() > 0 && !absoluteQualifiedName.toString().equals("/")) {
                absoluteQualifiedName.append("/");
            }
            Iterator iter = segments.iterator();
            while (iter.hasNext()) {
                String segment = (String)iter.next();
                absoluteQualifiedName.append(segment);
                if (!iter.hasNext() || segment.equals("/")) continue;
                absoluteQualifiedName.append("/");
            }
        }
        return absoluteQualifiedName.toString();
    }

    private static void addURIFragmentSegment(List<String> segments, InternalEObject owner, EObject arObject) {
        Assert.isNotNull(segments);
        Assert.isNotNull((Object)arObject);
        if (arObject instanceof GReferrable) {
            String shortName = ((GReferrable)arObject).gGetShortName();
            segments.add(shortName == null ? "" : shortName);
        } else if (arObject instanceof GAUTOSAR) {
            segments.add("/");
        } else if (owner != null && (segments.size() == 0 || segments.get(segments.size() - 1).contains(NON_IDENTIFIABLE_SEGMENT_PREFIX))) {
            EStructuralFeature containingFeature;
            try {
                containingFeature = arObject.eContainingFeature();
            }
            catch (NullPointerException ex) {
                containingFeature = null;
                PlatformLogUtil.logAsError((Plugin)Activator.getPlugin(), (Object)ex);
            }
            if (containingFeature != null) {
                segments.add(owner.eURIFragmentSegment(containingFeature, arObject));
            }
        }
    }

    private static String getDestinationTypeSpecifier(EObject arObject) {
        if (arObject != null) {
            return "type=" + arObject.eClass().getName();
        }
        return "";
    }

    public static String getURIFragment(EObject arObject) {
        return AutosarURIFactory.getURIFragment(null, null, arObject);
    }

    public static String getURIFragment(EObject owner, EStructuralFeature feature, EObject arObject) {
        String absoluteQualifiedName = AutosarURIFactory.getAbsoluteQualifiedName(owner, feature, arObject);
        String destinationTypeSpecifier = AutosarURIFactory.getDestinationTypeSpecifier(arObject);
        if (destinationTypeSpecifier.length() > 0) {
            return String.valueOf(absoluteQualifiedName) + QUERY_SEPARATOR + destinationTypeSpecifier;
        }
        return "";
    }

    public static URI getURI(EObject arObject) {
        return AutosarURIFactory.getURI(null, null, arObject);
    }

    public static URI getURI(EObject owner, EStructuralFeature feature, EObject arObject) {
        String uriFragment = AutosarURIFactory.getURIFragment(owner, feature, arObject);
        return AutosarURIFactory.createAutosarURI(uriFragment);
    }

    public static EObject getEObject(EObject eObject, String uriFragment) {
        if (eObject == null || uriFragment == null) {
            return null;
        }
        if (uriFragment.startsWith("/")) {
            EObject resolvedEObject;
            if (!(eObject instanceof GAUTOSAR)) {
                return null;
            }
            GAUTOSAR autosarObject = (GAUTOSAR)eObject;
            String remainingSegments = uriFragment.substring(1);
            if (AutosarURIFactory.getLeadingAbsoluteQualifiedNameSegment(remainingSegments).length() == 0 && remainingSegments.indexOf("/") == -1 && AUTOSAR_TYPE_NAME.equals(AutosarURIFactory.getDestinationTypeName(remainingSegments))) {
                return eObject;
            }
            EList arPackages = autosarObject.gGetArPackages();
            for (GARPackage arPackage : arPackages) {
                resolvedEObject = AutosarURIFactory.resolveAgainstARPackage(arPackage, remainingSegments);
                if (resolvedEObject == null) continue;
                return resolvedEObject;
            }
            for (EObject containedEObject : eObject.eContents()) {
                if (containedEObject instanceof GARPackage || (resolvedEObject = AutosarURIFactory.resolveAgainstAnyObject(containedEObject, remainingSegments, 2)) == null) continue;
                return resolvedEObject;
            }
            return null;
        }
        return AutosarURIFactory.resolveAgainstAnyObject(eObject, uriFragment, 2);
    }

    private static EObject resolveAgainstARPackage(GARPackage arPackage, String uriFragment) {
        Assert.isNotNull((Object)arPackage);
        Assert.isNotNull((Object)uriFragment);
        String arPackageSegment = AutosarURIFactory.getAbsoluteQualifiedNameSegment((InternalEObject)arPackage);
        String leadingSegment = AutosarURIFactory.getLeadingAbsoluteQualifiedNameSegment(uriFragment);
        if (AutosarURIFactory.matchesSegmentOf(leadingSegment, arPackageSegment)) {
            EObject resolvedEObject = AutosarURIFactory.resolveAgainstAnyObject((EObject)arPackage, uriFragment, 0);
            if (resolvedEObject != null) {
                return resolvedEObject;
            }
            int nextSeparatorIndex = uriFragment.indexOf("/");
            String remainingSegments = uriFragment.substring(nextSeparatorIndex + 1);
            EList elements = arPackage.gGetElements();
            for (EObject element : elements) {
                resolvedEObject = AutosarURIFactory.resolveAgainstAnyObject(element, remainingSegments, 2);
                if (resolvedEObject == null) continue;
                return resolvedEObject;
            }
            EList subPackages = arPackage.gGetSubPackages();
            for (GARPackage subPackage : subPackages) {
                resolvedEObject = AutosarURIFactory.resolveAgainstARPackage(subPackage, remainingSegments);
                if (resolvedEObject == null) continue;
                return resolvedEObject;
            }
            EStructuralFeature elementsFeature = arPackage.eClass().getEStructuralFeature("elements");
            EStructuralFeature aRPackagePackagesFeature = arPackage.eClass().getEStructuralFeature("subPackages");
            if (aRPackagePackagesFeature == null) {
                aRPackagePackagesFeature = arPackage.eClass().getEStructuralFeature("arPackages");
            }
            if ((resolvedEObject = AutosarURIFactory.resolveAgainstAnyObject((EObject)arPackage, uriFragment, 2, new EStructuralFeature[]{elementsFeature, aRPackagePackagesFeature})) != null) {
                return resolvedEObject;
            }
        }
        return null;
    }

    private static EObject resolveAgainstAnyObject(EObject arObject, String uriFragment, int depth) {
        return AutosarURIFactory.resolveAgainstAnyObject(arObject, uriFragment, depth, new EStructuralFeature[0]);
    }

    private static EObject resolveAgainstAnyObject(EObject eObject, String uriFragment, int depth, EStructuralFeature[] featuresToBeIgnored) {
        Assert.isNotNull((Object)eObject);
        Assert.isNotNull((Object)uriFragment);
        String eObjectSegment = AutosarURIFactory.getAbsoluteQualifiedNameSegment((InternalEObject)eObject);
        String leadingSegment = AutosarURIFactory.getLeadingAbsoluteQualifiedNameSegment(uriFragment);
        if (AutosarURIFactory.matchesSegmentOf(leadingSegment, eObjectSegment)) {
            int nextSeparatorIndex = uriFragment.indexOf("/");
            if (nextSeparatorIndex == -1 && leadingSegment.equals(eObjectSegment) && EObjectUtil.isAssignableFrom((EClass)eObject.eClass(), (String)AutosarURIFactory.getDestinationTypeName(uriFragment))) {
                return eObject;
            }
            if (depth == 0) {
                return null;
            }
            if (depth == 1) {
                depth = 0;
            }
            String remainingSegments = uriFragment.substring(nextSeparatorIndex + 1);
            List<EStructuralFeature> featuresToBeIgnoredList = Arrays.asList(featuresToBeIgnored);
            EcoreUtil.ProperContentIterator<EObject> contents = AutosarURIFactory.newNonResolvingContentsIterator(eObject);
            while (contents.hasNext()) {
                EObject resolvedEObject;
                EObject containedEObject = (EObject)contents.next();
                if (!AutosarURIFactory.isProperContent(eObject, containedEObject) || featuresToBeIgnoredList.size() != 0 && featuresToBeIgnoredList.contains(containedEObject.eContainingFeature()) || (resolvedEObject = AutosarURIFactory.resolveAgainstAnyObject(containedEObject, remainingSegments, depth, featuresToBeIgnored)) == null) continue;
                return resolvedEObject;
            }
        }
        return null;
    }

    private static boolean isProperContent(EObject eObject, EObject containedEObject) {
        return !containedEObject.eIsProxy() && containedEObject.eContainer() == eObject;
    }

    private static EcoreUtil.ProperContentIterator<EObject> newNonResolvingContentsIterator(EObject eObject) {
        return new EcoreUtil.ProperContentIterator(eObject, false);
    }

    private static String getAbsoluteQualifiedNameSegment(InternalEObject eObject) {
        if (eObject != null) {
            if (eObject instanceof GReferrable) {
                String shortName = ((GReferrable)eObject).gGetShortName();
                if (shortName != null) {
                    return shortName;
                }
            } else if (eObject.eInternalContainer() != null) {
                return eObject.eInternalContainer().eURIFragmentSegment(eObject.eContainingFeature(), (EObject)eObject);
            }
        }
        return "";
    }

    private static String getLeadingAbsoluteQualifiedNameSegment(String uriFragment) {
        if (uriFragment != null) {
            int nextSeparatorIndex = uriFragment.indexOf("/");
            if (nextSeparatorIndex != -1) {
                return uriFragment.substring(0, nextSeparatorIndex);
            }
            int queryStringIndex = uriFragment.indexOf(QUERY_SEPARATOR);
            return queryStringIndex != -1 ? uriFragment.substring(0, queryStringIndex) : uriFragment;
        }
        return "";
    }

    public static String getTrailingAbsoluteQualifiedNameSegment(String uriFragment) {
        if (uriFragment != null) {
            int queryStringIndex;
            String lastSegment = uriFragment;
            int lastSeparatorIndex = uriFragment.lastIndexOf("/");
            if (lastSeparatorIndex != -1 && lastSeparatorIndex < uriFragment.length() - 1) {
                lastSegment = uriFragment.substring(lastSeparatorIndex + 1);
            }
            return (queryStringIndex = lastSegment.indexOf(QUERY_SEPARATOR)) != -1 ? lastSegment.substring(0, queryStringIndex) : lastSegment;
        }
        return "";
    }

    @Deprecated
    public static String getLastAbsoluteQualifiedNameSegment(String uriFragment) {
        return AutosarURIFactory.getTrailingAbsoluteQualifiedNameSegment(uriFragment);
    }

    private static boolean matchesSegmentOf(String absoluteQualifiedNameSegment, String eObjectSegment) {
        Assert.isNotNull((Object)eObjectSegment);
        Assert.isNotNull((Object)absoluteQualifiedNameSegment);
        if (!absoluteQualifiedNameSegment.startsWith(NON_IDENTIFIABLE_SEGMENT_PREFIX) && eObjectSegment.startsWith(NON_IDENTIFIABLE_SEGMENT_PREFIX)) {
            return true;
        }
        return eObjectSegment.equals(absoluteQualifiedNameSegment);
    }

    private static String getDestinationTypeName(String uriFragment) {
        if (uriFragment != null) {
            int queryStringIndex = uriFragment.indexOf(QUERY_SEPARATOR);
            int queryStringValueOffset = KEY_VALUE_SEPARATOR.length() + DESTINATION_TYPE_KEY.length() + KEY_VALUE_SEPARATOR.length();
            if (queryStringIndex != -1 && queryStringIndex + queryStringValueOffset < uriFragment.length()) {
                return uriFragment.substring(queryStringIndex + queryStringValueOffset);
            }
        }
        return "";
    }

    public static Diagnostic validateURI(String uri) {
        Diagnostic diagnostic = Diagnostic.OK_INSTANCE;
        String errorMessage = null;
        String autosarScheme = "ar:/#";
        String queryType = "?type=";
        int lastIndexOf = uri.lastIndexOf(queryType);
        String destinationTypeName = null;
        if (lastIndexOf > 0) {
            destinationTypeName = uri.substring(lastIndexOf, uri.length());
        }
        if (!uri.startsWith(autosarScheme)) {
            errorMessage = NLS.bind((String)Messages.error_invalidAutosarURIMustStartWithAutosarScheme, (Object)autosarScheme);
        } else if (destinationTypeName != null) {
            if (destinationTypeName.contains(SCHEME_SEPARATOR)) {
                errorMessage = NLS.bind((String)Messages.error_invalidAutosarURIInvalideDestinationTypeSpecifier, (Object[])new Object[]{destinationTypeName, SCHEME_SEPARATOR});
            } else if (destinationTypeName.contains("/")) {
                errorMessage = NLS.bind((String)Messages.error_invalidAutosarURIInvalideDestinationTypeSpecifier, (Object[])new Object[]{destinationTypeName, "/"});
            } else if (destinationTypeName.contains(FRAGMENT_SEPARATOR)) {
                errorMessage = NLS.bind((String)Messages.error_invalidAutosarURIInvalideDestinationTypeSpecifier, (Object[])new Object[]{destinationTypeName, FRAGMENT_SEPARATOR});
            }
        } else if (destinationTypeName == null) {
            errorMessage = NLS.bind((String)Messages.error_invalidAutosarURIMustContentQueryDestinationTypeSpecifier, (Object)"?type=");
        }
        if (errorMessage != null) {
            return new BasicDiagnostic(Activator.getPlugin().getSymbolicName(), 4, errorMessage, new Object[]{uri});
        }
        return diagnostic;
    }
}

