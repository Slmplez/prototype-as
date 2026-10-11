/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.sat4j.core.Vec
 *  org.sat4j.core.VecInt
 *  org.sat4j.reader.ParseFormatException
 *  org.sat4j.specs.ContradictionException
 *  org.sat4j.specs.IVec
 *  org.sat4j.specs.IVecInt
 */
package org.sat4j.pb.reader;

import java.io.IOException;
import java.io.PrintWriter;
import java.math.BigInteger;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.sat4j.core.Vec;
import org.sat4j.core.VecInt;
import org.sat4j.pb.IPBSolver;
import org.sat4j.pb.reader.OPBReader2006;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IVec;
import org.sat4j.specs.IVecInt;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class OPBReader2007
extends OPBReader2006 {
    private static final long serialVersionUID = 1L;
    protected int nbNewSymbols;
    private final Map<String, IVec<String>> varToProduct = new HashMap<String, IVec<String>>();
    private final Map<String, Map<String, String>> binaryProductToVar = new HashMap<String, Map<String, String>>();

    public OPBReader2007(IPBSolver iPBSolver) {
        super(iPBSolver);
    }

    @Override
    protected boolean isGoodFirstCharacter(char c) {
        return Character.isLetter(c) || c == '_' || c == '~';
    }

    @Override
    protected void checkId(StringBuffer stringBuffer) throws ParseFormatException {
        int n;
        int n2 = 1;
        if (stringBuffer.charAt(0) == '~') {
            n2 = 2;
        }
        if ((n = Integer.parseInt(stringBuffer.substring(n2))) > this.nbVars) {
            throw new ParseFormatException("Variable identifier larger than #variables in metadata.");
        }
    }

    @Override
    protected void readTerm(StringBuffer stringBuffer, StringBuffer stringBuffer2) throws IOException, ParseFormatException {
        this.readInteger(stringBuffer);
        this.skipSpaces();
        stringBuffer2.setLength(0);
        Vec vec = new Vec();
        StringBuffer stringBuffer3 = new StringBuffer();
        while (this.readIdentifier(stringBuffer3)) {
            vec = vec.push((Object)stringBuffer3.toString());
            this.skipSpaces();
        }
        if (vec.size() == 0) {
            throw new ParseFormatException("identifier expected");
        }
        if (vec.size() == 1) {
            stringBuffer2.append((String)vec.last());
            vec.pop();
        } else {
            try {
                stringBuffer2.append(this.linearizeProduct((IVec<String>)vec));
            }
            catch (ContradictionException contradictionException) {
                throw new ParseFormatException((Throwable)contradictionException);
            }
        }
    }

    protected void literalInAProduct(String string, IVecInt iVecInt) throws ParseFormatException {
        int n = string.charAt(0) == '~' ? 2 : 1;
        int n2 = Integer.parseInt(string.substring(n));
        int n3 = (string.charAt(0) == '~' ? -1 : 1) * n2;
        if (n3 == 0 || Math.abs(n3) >= this.nbNewSymbols) {
            throw new ParseFormatException("Wrong variable id");
        }
        iVecInt.push(n3);
    }

    protected void negateLiteralInAProduct(String string, IVecInt iVecInt) {
        int n = string.charAt(0) == '~' ? 2 : 1;
        int n2 = Integer.parseInt(string.substring(n));
        int n3 = (string.charAt(0) == '~' ? 1 : -1) * n2;
        iVecInt.push(n3);
    }

    @Override
    protected void readMetaData() throws IOException, ParseFormatException {
        String[] stringArray;
        String string;
        char c = this.get();
        if (c != '*') {
            throw new ParseFormatException("First line of input file should be a comment");
        }
        String string2 = this.readWord();
        if (this.eof() || !"#variable=".equals(string2)) {
            throw new ParseFormatException("First line should contain #variable= as first keyword");
        }
        this.nbVars = Integer.parseInt(this.readWord());
        this.nbNewSymbols = this.nbVars + 1;
        string2 = this.readWord();
        if (this.eof() || !"#constraint=".equals(string2)) {
            throw new ParseFormatException("First line should contain #constraint= as second keyword");
        }
        this.nbConstr = Integer.parseInt(this.readWord());
        this.charAvailable = false;
        if (!this.eol() && (string = this.in.readLine()) != null && string.indexOf("#product=") != -1 && (stringArray = string.trim().split(" "))[0].equals("#product=")) {
            Integer.parseInt(stringArray[1]);
        }
        this.metaData(this.nbVars, this.nbConstr);
    }

    @Override
    protected int translateVarToId(String string) throws ParseFormatException {
        int n = string.charAt(0) == '~' ? 2 : 1;
        int n2 = Integer.parseInt(string.substring(n));
        if (n2 == 0 || n2 >= this.nbNewSymbols) {
            throw new ParseFormatException(new StringBuffer().append("Wrong variable id format: ").append(string).toString());
        }
        return (string.charAt(0) == '~' ? -1 : 1) * n2;
    }

    private String linearizeProduct(IVec<String> iVec) throws ContradictionException, ParseFormatException {
        iVec.sort(String.CASE_INSENSITIVE_ORDER);
        String string = this.getProductVariable(iVec);
        if (string == null) {
            Object object;
            string = new StringBuffer().append("X").append(this.nbNewSymbols++).toString();
            if (iVec.size() == 2) {
                object = this.binaryProductToVar.get(iVec.get(0));
                if (object == null) {
                    object = new HashMap();
                    this.binaryProductToVar.put((String)iVec.get(0), (Map<String, String>)object);
                }
                object.put(iVec.get(1), string);
            }
            this.varToProduct.put(string, iVec);
            object = new VecInt();
            Iterator iterator = iVec.iterator();
            while (iterator.hasNext()) {
                this.negateLiteralInAProduct((String)iterator.next(), (IVecInt)object);
            }
            this.literalInAProduct(string, (IVecInt)object);
            this.solver.addClause((IVecInt)object);
            object.clear();
            iterator = new Vec();
            Iterator iterator2 = iVec.iterator();
            while (iterator2.hasNext()) {
                this.literalInAProduct((String)iterator2.next(), (IVecInt)object);
                iterator.push(BigInteger.ONE);
            }
            this.literalInAProduct(string, (IVecInt)object);
            iterator.push(new BigInteger(String.valueOf(-iVec.size())));
            this.solver.addPseudoBoolean((IVecInt)object, (IVec<BigInteger>)iterator, true, BigInteger.ZERO);
        }
        return string;
    }

    private String getProductVariable(IVec<String> iVec) {
        if (iVec.size() == 2) {
            Map<String, String> map = this.binaryProductToVar.get(iVec.get(0));
            if (map == null) {
                return null;
            }
            return map.get(iVec.get(1));
        }
        for (Map.Entry<String, IVec<String>> entry : this.varToProduct.entrySet()) {
            if (!entry.getValue().equals(iVec)) continue;
            return entry.getKey();
        }
        return null;
    }

    @Override
    public String decode(int[] nArray) {
        StringBuffer stringBuffer = new StringBuffer();
        for (int i = 0; i < nArray.length; ++i) {
            int n = nArray[i];
            if (Math.abs(n) > this.nbVars) continue;
            if (n < 0) {
                stringBuffer.append("-x");
                stringBuffer.append(-n);
            } else {
                stringBuffer.append("x");
                stringBuffer.append(n);
            }
            stringBuffer.append(" ");
        }
        return stringBuffer.toString();
    }

    @Override
    public void decode(int[] nArray, PrintWriter printWriter) {
        for (int i = 0; i < nArray.length; ++i) {
            int n = nArray[i];
            if (Math.abs(n) > this.nbVars) continue;
            if (nArray[i] < 0) {
                printWriter.print("-x");
                printWriter.print(-n);
            } else {
                printWriter.print("x");
                printWriter.print(n);
            }
            printWriter.print(" ");
        }
    }
}

