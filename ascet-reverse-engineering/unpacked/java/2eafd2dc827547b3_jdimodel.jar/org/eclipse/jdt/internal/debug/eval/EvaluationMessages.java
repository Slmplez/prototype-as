/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.jdt.internal.debug.eval;

import org.eclipse.osgi.util.NLS;

public class EvaluationMessages
extends NLS {
    private static final String BUNDLE_NAME = "org.eclipse.jdt.internal.debug.eval.EvaluationMessages";
    public static String LocalEvaluationEngine_Evaluation_in_context_of_inner_type_not_supported__19;
    public static String LocalEvaluationEngine_Evaluation_failed___unable_to_determine_receiving_type_context__18;
    public static String LocalEvaluationEngine_Evaluation_failed___internal_error_retreiving_result__17;
    public static String LocalEvaluationEngine_Evaluation_failed___unable_to_instantiate_code_snippet_class__11;
    public static String LocalEvaluationEngine__0__occurred_deploying_class_file_for_evaluation_9;
    public static String LocalEvaluationEngine_Evaluation_failed___evaluation_thread_must_be_suspended__8;
    public static String LocalEvaluationEngine_Evaluation_failed___evaluation_context_has_been_disposed__7;
    public static String LocalEvaluationEngine_Evaluation_failed___unable_to_initialize_local_variables__6;
    public static String LocalEvaluationEngine_Evaluation_failed___unable_to_initialize___this___context__5;
    public static String LocalEvaluationEngine_Evaluation_failed___unable_to_initialize_local_variables__4;
    static /* synthetic */ Class class$0;

    static {
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName(BUNDLE_NAME);
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        NLS.initializeMessages((String)BUNDLE_NAME, (Class)clazz);
    }
}

