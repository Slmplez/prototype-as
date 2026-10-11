/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.emf.common.util.DiagnosticChain
 */
package org.eclipse.emf.ecore;

import java.util.Map;
import org.eclipse.emf.common.util.DiagnosticChain;
import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.EDataType;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.emf.ecore.EOperation;
import org.eclipse.emf.ecore.EPackage;
import org.eclipse.emf.ecore.EStructuralFeature;
import org.eclipse.emf.ecore.impl.EValidatorRegistryImpl;
import org.eclipse.emf.ecore.impl.ValidationDelegateRegistryImpl;

/*
 * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public interface EValidator {
    public static final String MARKER = "org.eclipse.emf.ecore.diagnostic";
    public static final String URI_ATTRIBUTE = "uri";
    public static final String RELATED_URIS_ATTRIBUTE = "relatedURIs";

    public boolean validate(EObject var1, DiagnosticChain var2, Map<Object, Object> var3);

    public boolean validate(EClass var1, EObject var2, DiagnosticChain var3, Map<Object, Object> var4);

    public boolean validate(EDataType var1, Object var2, DiagnosticChain var3, Map<Object, Object> var4);

    public static interface Descriptor {
        public EValidator getEValidator();
    }

    public static interface PatternMatcher {
        public boolean matches(String var1);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface Registry
    extends Map<EPackage, Object> {
        public static final Registry INSTANCE = new EValidatorRegistryImpl();

        public EValidator getEValidator(EPackage var1);
    }

    public static interface SubstitutionLabelProvider {
        public String getObjectLabel(EObject var1);

        public String getFeatureLabel(EStructuralFeature var1);

        public String getValueLabel(EDataType var1, Object var2);
    }

    /*
     * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static interface ValidationDelegate {
        public boolean validate(EClass var1, EObject var2, Map<Object, Object> var3, EOperation var4, String var5);

        public boolean validate(EClass var1, EObject var2, Map<Object, Object> var3, String var4, String var5);

        public boolean validate(EDataType var1, Object var2, Map<Object, Object> var3, String var4, String var5);

        public static interface Descriptor {
            public ValidationDelegate getValidationDelegate();
        }

        /*
         * This class specifies class file version 49.0 but uses Java 6 signatures.  Assumed Java 6.
         */
        public static interface Registry
        extends Map<String, Object> {
            public static final Registry INSTANCE = new ValidationDelegateRegistryImpl();

            public ValidationDelegate getValidationDelegate(String var1);
        }
    }
}

