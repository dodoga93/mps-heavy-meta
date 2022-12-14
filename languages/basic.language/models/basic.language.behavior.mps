<?xml version="1.0" encoding="UTF-8"?>
<model ref="r:b94a7a3e-e4d9-46df-ae75-8a7507002cbf(basic.language.behavior)">
  <persistence version="9" />
  <languages>
    <use id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel" version="19" />
    <use id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior" version="2" />
    <use id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes" version="0" />
    <devkit ref="fbc25dd2-5da4-483a-8b19-70928e1b62d7(jetbrains.mps.devkit.general-purpose)" />
  </languages>
  <imports>
    <import index="owy0" ref="r:1c62855e-b2de-4a7c-81d3-5a68b5627482(basic.language.structure)" />
    <import index="o8zo" ref="r:314576fc-3aee-4386-a0a5-a38348ac317d(jetbrains.mps.scope)" />
    <import index="c17a" ref="8865b7a8-5271-43d3-884c-6fd1d9cfdd34/java:org.jetbrains.mps.openapi.language(MPS.OpenAPI/)" />
    <import index="tpcu" ref="r:00000000-0000-4000-0000-011c89590282(jetbrains.mps.lang.core.behavior)" />
    <import index="tpck" ref="r:00000000-0000-4000-0000-011c89590288(jetbrains.mps.lang.core.structure)" />
    <import index="genb" ref="r:142fc2e9-fc09-4c4f-92d7-6ce0e3f66b61(jetbrains.mps.lang.scopes.structure)" />
    <import index="6xgk" ref="r:6e9ad488-5df2-49e4-8c01-8a7f3812adf7(jetbrains.mps.lang.scopes.runtime)" />
  </imports>
  <registry>
    <language id="af65afd8-f0dd-4942-87d9-63a55f2a9db1" name="jetbrains.mps.lang.behavior">
      <concept id="6496299201655527393" name="jetbrains.mps.lang.behavior.structure.LocalBehaviorMethodCall" flags="nn" index="BsUDl" />
      <concept id="1225194240794" name="jetbrains.mps.lang.behavior.structure.ConceptBehavior" flags="ng" index="13h7C7">
        <reference id="1225194240799" name="concept" index="13h7C2" />
        <child id="1225194240805" name="method" index="13h7CS" />
        <child id="1225194240801" name="constructor" index="13h7CW" />
      </concept>
      <concept id="1225194413805" name="jetbrains.mps.lang.behavior.structure.ConceptConstructorDeclaration" flags="in" index="13hLZK" />
      <concept id="1225194472830" name="jetbrains.mps.lang.behavior.structure.ConceptMethodDeclaration" flags="ng" index="13i0hz">
        <property id="5864038008284099149" name="isStatic" index="2Ki8OM" />
        <property id="1225194472832" name="isVirtual" index="13i0it" />
        <property id="1225194472834" name="isAbstract" index="13i0iv" />
        <reference id="1225194472831" name="overriddenMethod" index="13i0hy" />
      </concept>
      <concept id="1225194628440" name="jetbrains.mps.lang.behavior.structure.SuperNodeExpression" flags="nn" index="13iAh5">
        <reference id="5299096511375896640" name="superConcept" index="3eA5LN" />
      </concept>
      <concept id="1225194691553" name="jetbrains.mps.lang.behavior.structure.ThisNodeExpression" flags="nn" index="13iPFW" />
    </language>
    <language id="f3061a53-9226-4cc5-a443-f952ceaf5816" name="jetbrains.mps.baseLanguage">
      <concept id="4836112446988635817" name="jetbrains.mps.baseLanguage.structure.UndefinedType" flags="in" index="2jxLKc" />
      <concept id="1197027756228" name="jetbrains.mps.baseLanguage.structure.DotExpression" flags="nn" index="2OqwBi">
        <child id="1197027771414" name="operand" index="2Oq$k0" />
        <child id="1197027833540" name="operation" index="2OqNvi" />
      </concept>
      <concept id="1145552977093" name="jetbrains.mps.baseLanguage.structure.GenericNewExpression" flags="nn" index="2ShNRf">
        <child id="1145553007750" name="creator" index="2ShVmc" />
      </concept>
      <concept id="1137021947720" name="jetbrains.mps.baseLanguage.structure.ConceptFunction" flags="in" index="2VMwT0">
        <child id="1137022507850" name="body" index="2VODD2" />
      </concept>
      <concept id="1081236700937" name="jetbrains.mps.baseLanguage.structure.StaticMethodCall" flags="nn" index="2YIFZM">
        <reference id="1144433194310" name="classConcept" index="1Pybhc" />
      </concept>
      <concept id="1070534058343" name="jetbrains.mps.baseLanguage.structure.NullLiteral" flags="nn" index="10Nm6u" />
      <concept id="1070534370425" name="jetbrains.mps.baseLanguage.structure.IntegerType" flags="in" index="10Oyi0" />
      <concept id="1070534644030" name="jetbrains.mps.baseLanguage.structure.BooleanType" flags="in" index="10P_77" />
      <concept id="1068431474542" name="jetbrains.mps.baseLanguage.structure.VariableDeclaration" flags="ng" index="33uBYm">
        <child id="1068431790190" name="initializer" index="33vP2m" />
      </concept>
      <concept id="1068498886296" name="jetbrains.mps.baseLanguage.structure.VariableReference" flags="nn" index="37vLTw">
        <reference id="1068581517664" name="variableDeclaration" index="3cqZAo" />
      </concept>
      <concept id="1068498886292" name="jetbrains.mps.baseLanguage.structure.ParameterDeclaration" flags="ir" index="37vLTG" />
      <concept id="4972933694980447171" name="jetbrains.mps.baseLanguage.structure.BaseVariableDeclaration" flags="ng" index="19Szcq">
        <child id="5680397130376446158" name="type" index="1tU5fm" />
      </concept>
      <concept id="1068580123132" name="jetbrains.mps.baseLanguage.structure.BaseMethodDeclaration" flags="ng" index="3clF44">
        <child id="1068580123133" name="returnType" index="3clF45" />
        <child id="1068580123134" name="parameter" index="3clF46" />
        <child id="1068580123135" name="body" index="3clF47" />
      </concept>
      <concept id="1068580123155" name="jetbrains.mps.baseLanguage.structure.ExpressionStatement" flags="nn" index="3clFbF">
        <child id="1068580123156" name="expression" index="3clFbG" />
      </concept>
      <concept id="1068580123159" name="jetbrains.mps.baseLanguage.structure.IfStatement" flags="nn" index="3clFbJ">
        <child id="1068580123160" name="condition" index="3clFbw" />
        <child id="1068580123161" name="ifTrue" index="3clFbx" />
      </concept>
      <concept id="1068580123136" name="jetbrains.mps.baseLanguage.structure.StatementList" flags="sn" stub="5293379017992965193" index="3clFbS">
        <child id="1068581517665" name="statement" index="3cqZAp" />
      </concept>
      <concept id="1068580123137" name="jetbrains.mps.baseLanguage.structure.BooleanConstant" flags="nn" index="3clFbT">
        <property id="1068580123138" name="value" index="3clFbU" />
      </concept>
      <concept id="1068580320020" name="jetbrains.mps.baseLanguage.structure.IntegerConstant" flags="nn" index="3cmrfG">
        <property id="1068580320021" name="value" index="3cmrfH" />
      </concept>
      <concept id="1068581242878" name="jetbrains.mps.baseLanguage.structure.ReturnStatement" flags="nn" index="3cpWs6">
        <child id="1068581517676" name="expression" index="3cqZAk" />
      </concept>
      <concept id="1068581242864" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclarationStatement" flags="nn" index="3cpWs8">
        <child id="1068581242865" name="localVariableDeclaration" index="3cpWs9" />
      </concept>
      <concept id="1068581242863" name="jetbrains.mps.baseLanguage.structure.LocalVariableDeclaration" flags="nr" index="3cpWsn" />
      <concept id="1081506773034" name="jetbrains.mps.baseLanguage.structure.LessThanExpression" flags="nn" index="3eOVzh" />
      <concept id="1204053956946" name="jetbrains.mps.baseLanguage.structure.IMethodCall" flags="ng" index="1ndlxa">
        <reference id="1068499141037" name="baseMethodDeclaration" index="37wK5l" />
        <child id="1068499141038" name="actualArgument" index="37wK5m" />
      </concept>
      <concept id="1212685548494" name="jetbrains.mps.baseLanguage.structure.ClassCreator" flags="nn" index="1pGfFk" />
      <concept id="1107535904670" name="jetbrains.mps.baseLanguage.structure.ClassifierType" flags="in" index="3uibUv">
        <reference id="1107535924139" name="classifier" index="3uigEE" />
      </concept>
      <concept id="1081773326031" name="jetbrains.mps.baseLanguage.structure.BinaryOperation" flags="nn" index="3uHJSO">
        <child id="1081773367579" name="rightExpression" index="3uHU7w" />
        <child id="1081773367580" name="leftExpression" index="3uHU7B" />
      </concept>
      <concept id="1178549954367" name="jetbrains.mps.baseLanguage.structure.IVisible" flags="ng" index="1B3ioH">
        <child id="1178549979242" name="visibility" index="1B3o_S" />
      </concept>
      <concept id="1146644602865" name="jetbrains.mps.baseLanguage.structure.PublicVisibility" flags="nn" index="3Tm1VV" />
    </language>
    <language id="fd392034-7849-419d-9071-12563d152375" name="jetbrains.mps.baseLanguage.closures">
      <concept id="1199569711397" name="jetbrains.mps.baseLanguage.closures.structure.ClosureLiteral" flags="nn" index="1bVj0M">
        <child id="1199569906740" name="parameter" index="1bW2Oz" />
        <child id="1199569916463" name="body" index="1bW5cS" />
      </concept>
    </language>
    <language id="d8f591ec-4d86-4af2-9f92-a9e93c803ffa" name="jetbrains.mps.lang.scopes">
      <concept id="8077936094962911282" name="jetbrains.mps.lang.scopes.structure.ParentScope" flags="nn" index="iy90A" />
    </language>
    <language id="7866978e-a0f0-4cc7-81bc-4d213d9375e1" name="jetbrains.mps.lang.smodel">
      <concept id="1179168000618" name="jetbrains.mps.lang.smodel.structure.Node_GetIndexInParentOperation" flags="nn" index="2bSWHS" />
      <concept id="1177026924588" name="jetbrains.mps.lang.smodel.structure.RefConcept_Reference" flags="nn" index="chp4Y">
        <reference id="1177026940964" name="conceptDeclaration" index="cht4Q" />
      </concept>
      <concept id="1179409122411" name="jetbrains.mps.lang.smodel.structure.Node_ConceptMethodCall" flags="nn" index="2qgKlT" />
      <concept id="4693937538533521280" name="jetbrains.mps.lang.smodel.structure.OfConceptOperation" flags="ng" index="v3k3i">
        <child id="4693937538533538124" name="requestedConcept" index="v3oSu" />
      </concept>
      <concept id="1180031783296" name="jetbrains.mps.lang.smodel.structure.Concept_IsSubConceptOfOperation" flags="nn" index="2Zo12i">
        <child id="1180031783297" name="conceptArgument" index="2Zo12j" />
      </concept>
      <concept id="2644386474300074836" name="jetbrains.mps.lang.smodel.structure.ConceptIdRefExpression" flags="nn" index="35c_gC">
        <reference id="2644386474300074837" name="conceptDeclaration" index="35c_gD" />
      </concept>
      <concept id="6677504323281689838" name="jetbrains.mps.lang.smodel.structure.SConceptType" flags="in" index="3bZ5Sz" />
      <concept id="1138055754698" name="jetbrains.mps.lang.smodel.structure.SNodeType" flags="in" index="3Tqbb2">
        <reference id="1138405853777" name="concept" index="ehGHo" />
      </concept>
      <concept id="1138056282393" name="jetbrains.mps.lang.smodel.structure.SLinkListAccess" flags="nn" index="3Tsc0h">
        <reference id="1138056546658" name="link" index="3TtcxE" />
      </concept>
    </language>
    <language id="ceab5195-25ea-4f22-9b92-103b95ca8c0c" name="jetbrains.mps.lang.core">
      <concept id="1133920641626" name="jetbrains.mps.lang.core.structure.BaseConcept" flags="ng" index="2VYdi">
        <property id="1193676396447" name="virtualPackage" index="3GE5qa" />
      </concept>
      <concept id="1169194658468" name="jetbrains.mps.lang.core.structure.INamedConcept" flags="ng" index="TrEIO">
        <property id="1169194664001" name="name" index="TrG5h" />
      </concept>
    </language>
    <language id="83888646-71ce-4f1c-9c53-c54016f6ad4f" name="jetbrains.mps.baseLanguage.collections">
      <concept id="1204796164442" name="jetbrains.mps.baseLanguage.collections.structure.InternalSequenceOperation" flags="nn" index="23sCx2">
        <child id="1204796294226" name="closure" index="23t8la" />
      </concept>
      <concept id="1176906603202" name="jetbrains.mps.baseLanguage.collections.structure.BinaryOperation" flags="nn" index="56pJg">
        <child id="1176906787974" name="rightExpression" index="576Qk" />
      </concept>
      <concept id="1151689724996" name="jetbrains.mps.baseLanguage.collections.structure.SequenceType" flags="in" index="A3Dl8">
        <child id="1151689745422" name="elementType" index="A3Ik2" />
      </concept>
      <concept id="1203518072036" name="jetbrains.mps.baseLanguage.collections.structure.SmartClosureParameterDeclaration" flags="ig" index="Rh6nW" />
      <concept id="1202120902084" name="jetbrains.mps.baseLanguage.collections.structure.WhereOperation" flags="nn" index="3zZkjj" />
      <concept id="1180964022718" name="jetbrains.mps.baseLanguage.collections.structure.ConcatOperation" flags="nn" index="3QWeyG" />
    </language>
  </registry>
  <node concept="13h7C7" id="2e39b4KqO0x">
    <property role="3GE5qa" value="expr.binary" />
    <ref role="13h7C2" to="owy0:1S7MtxweHid" resolve="BBinaryExpression" />
    <node concept="13hLZK" id="2e39b4KqO0y" role="13h7CW">
      <node concept="3clFbS" id="2e39b4KqO0z" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="2e39b4KqO1i" role="13h7CS">
      <property role="TrG5h" value="leftAssociative" />
      <property role="2Ki8OM" value="true" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="2e39b4KqO1j" role="1B3o_S" />
      <node concept="10P_77" id="2e39b4KqO1H" role="3clF45" />
      <node concept="3clFbS" id="2e39b4KqO1l" role="3clF47">
        <node concept="3clFbF" id="2e39b4KqO2h" role="3cqZAp">
          <node concept="3clFbT" id="6ba0Xf473j7" role="3clFbG">
            <property role="3clFbU" value="true" />
          </node>
        </node>
      </node>
    </node>
    <node concept="13i0hz" id="2e39b4KqO69" role="13h7CS">
      <property role="TrG5h" value="priority" />
      <property role="2Ki8OM" value="true" />
      <property role="13i0it" value="true" />
      <node concept="3Tm1VV" id="2e39b4KqO6a" role="1B3o_S" />
      <node concept="10Oyi0" id="2e39b4KqO6_" role="3clF45" />
      <node concept="3clFbS" id="2e39b4KqO6c" role="3clF47">
        <node concept="3clFbF" id="2e39b4KqO7h" role="3cqZAp">
          <node concept="3cmrfG" id="2e39b4KqO7g" role="3clFbG">
            <property role="3cmrfH" value="0" />
          </node>
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7VBD6KRUUBP">
    <ref role="13h7C2" to="owy0:7VBD6KRUUBO" resolve="BStatementContainer" />
    <node concept="13hLZK" id="7VBD6KRUUBQ" role="13h7CW">
      <node concept="3clFbS" id="7VBD6KRUUBR" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7VBD6KRUUC0" role="13h7CS">
      <property role="13i0iv" value="true" />
      <property role="13i0it" value="true" />
      <property role="TrG5h" value="getStatements" />
      <node concept="3Tm1VV" id="7VBD6KRUUC1" role="1B3o_S" />
      <node concept="A3Dl8" id="7VBD6KRUUCg" role="3clF45">
        <node concept="3Tqbb2" id="7VBD6KRUUCt" role="A3Ik2">
          <ref role="ehGHo" to="owy0:2XwB4Mke_Pc" resolve="BStatement" />
        </node>
      </node>
      <node concept="3clFbS" id="7VBD6KRUUC3" role="3clF47" />
    </node>
    <node concept="13i0hz" id="WXWDRA54zO" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QDV$" resolve="getScope" />
      <node concept="3Tm1VV" id="WXWDRA54zP" role="1B3o_S" />
      <node concept="3clFbS" id="WXWDRA54zY" role="3clF47">
        <node concept="3clFbJ" id="WXWDRA55fL" role="3cqZAp">
          <node concept="3clFbS" id="WXWDRA55fM" role="3clFbx">
            <node concept="3cpWs8" id="WXWDRA5iTf" role="3cqZAp">
              <node concept="3cpWsn" id="WXWDRA5iTg" role="3cpWs9">
                <property role="TrG5h" value="variables" />
                <node concept="3uibUv" id="WXWDRA5iTh" role="1tU5fm">
                  <ref role="3uigEE" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                </node>
                <node concept="2YIFZM" id="WXWDRA55fO" role="33vP2m">
                  <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="2OqwBi" id="WXWDRA55fP" role="37wK5m">
                    <node concept="2OqwBi" id="WXWDRA55fQ" role="2Oq$k0">
                      <node concept="BsUDl" id="WXWDRA55fR" role="2Oq$k0">
                        <ref role="37wK5l" node="7VBD6KRUUC0" resolve="getStatements" />
                      </node>
                      <node concept="v3k3i" id="WXWDRA55fS" role="2OqNvi">
                        <node concept="chp4Y" id="WXWDRA55fT" role="v3oSu">
                          <ref role="cht4Q" to="owy0:2XwB4MkeNKy" resolve="BVariableDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="3zZkjj" id="WXWDRA55fU" role="2OqNvi">
                      <node concept="1bVj0M" id="WXWDRA55fV" role="23t8la">
                        <node concept="3clFbS" id="WXWDRA55fW" role="1bW5cS">
                          <node concept="3clFbF" id="WXWDRA55fX" role="3cqZAp">
                            <node concept="3eOVzh" id="WXWDRA55fY" role="3clFbG">
                              <node concept="2OqwBi" id="WXWDRA55fZ" role="3uHU7B">
                                <node concept="37vLTw" id="WXWDRA55g0" role="2Oq$k0">
                                  <ref role="3cqZAo" node="WXWDRA55g5" resolve="it" />
                                </node>
                                <node concept="2bSWHS" id="WXWDRA55g1" role="2OqNvi" />
                              </node>
                              <node concept="2OqwBi" id="WXWDRA55g2" role="3uHU7w">
                                <node concept="37vLTw" id="WXWDRA55g3" role="2Oq$k0">
                                  <ref role="3cqZAo" node="WXWDRA54$1" resolve="child" />
                                </node>
                                <node concept="2bSWHS" id="WXWDRA55g4" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="WXWDRA55g5" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="WXWDRA55g6" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="WXWDRA5yln" role="3cqZAp">
              <node concept="2ShNRf" id="WXWDRA5y$_" role="3cqZAk">
                <node concept="1pGfFk" id="WXWDRA5yL4" role="2ShVmc">
                  <ref role="37wK5l" to="6xgk:6Kqn2fZxA8P" resolve="HidingByNameScope" />
                  <node concept="35c_gC" id="WXWDRA5yYI" role="37wK5m">
                    <ref role="35c_gD" to="owy0:2XwB4MkeNKy" resolve="BVariableDeclaration" />
                  </node>
                  <node concept="37vLTw" id="WXWDRA5zkM" role="37wK5m">
                    <ref role="3cqZAo" node="WXWDRA54zZ" resolve="kind" />
                  </node>
                  <node concept="37vLTw" id="WXWDRA5zuZ" role="37wK5m">
                    <ref role="3cqZAo" node="WXWDRA5iTg" resolve="variables" />
                  </node>
                  <node concept="iy90A" id="WXWDRA5zKz" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="WXWDRA55g8" role="3clFbw">
            <node concept="37vLTw" id="WXWDRA55g9" role="2Oq$k0">
              <ref role="3cqZAo" node="WXWDRA54zZ" resolve="kind" />
            </node>
            <node concept="2Zo12i" id="WXWDRA55ga" role="2OqNvi">
              <node concept="chp4Y" id="WXWDRA55gb" role="2Zo12j">
                <ref role="cht4Q" to="owy0:2XwB4MkeNKy" resolve="BVariableDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="WXWDRA55_B" role="3cqZAp">
          <node concept="10Nm6u" id="WXWDRA55P9" role="3cqZAk" />
        </node>
      </node>
      <node concept="37vLTG" id="WXWDRA54zZ" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="WXWDRA54$0" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="WXWDRA54$1" role="3clF46">
        <property role="TrG5h" value="child" />
        <node concept="3Tqbb2" id="WXWDRA54$2" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="WXWDRA54$3" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
    <node concept="13i0hz" id="WXWDRA54Im" role="13h7CS">
      <property role="TrG5h" value="getScope" />
      <ref role="13i0hy" to="tpcu:52_Geb4QFgX" resolve="getScope" />
      <node concept="3Tm1VV" id="WXWDRA54In" role="1B3o_S" />
      <node concept="3clFbS" id="WXWDRA54I$" role="3clF47">
        <node concept="3clFbJ" id="WXWDRA565A" role="3cqZAp">
          <node concept="3clFbS" id="WXWDRA565B" role="3clFbx">
            <node concept="3cpWs8" id="WXWDRA5l6K" role="3cqZAp">
              <node concept="3cpWsn" id="WXWDRA5l6L" role="3cpWs9">
                <property role="TrG5h" value="variables" />
                <node concept="3uibUv" id="WXWDRA5l6M" role="1tU5fm">
                  <ref role="3uigEE" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                </node>
                <node concept="2YIFZM" id="WXWDRA565D" role="33vP2m">
                  <ref role="37wK5l" to="o8zo:4IP40Bi3eAf" resolve="forNamedElements" />
                  <ref role="1Pybhc" to="o8zo:4IP40Bi3e_R" resolve="ListScope" />
                  <node concept="2OqwBi" id="WXWDRA565E" role="37wK5m">
                    <node concept="2OqwBi" id="WXWDRA565F" role="2Oq$k0">
                      <node concept="BsUDl" id="WXWDRA565G" role="2Oq$k0">
                        <ref role="37wK5l" node="7VBD6KRUUC0" resolve="getStatements" />
                      </node>
                      <node concept="v3k3i" id="WXWDRA565H" role="2OqNvi">
                        <node concept="chp4Y" id="WXWDRA565I" role="v3oSu">
                          <ref role="cht4Q" to="owy0:2XwB4MkeNKy" resolve="BVariableDeclaration" />
                        </node>
                      </node>
                    </node>
                    <node concept="3zZkjj" id="WXWDRA565J" role="2OqNvi">
                      <node concept="1bVj0M" id="WXWDRA565K" role="23t8la">
                        <node concept="3clFbS" id="WXWDRA565L" role="1bW5cS">
                          <node concept="3clFbF" id="WXWDRA565M" role="3cqZAp">
                            <node concept="3eOVzh" id="WXWDRA565N" role="3clFbG">
                              <node concept="37vLTw" id="WXWDRA565O" role="3uHU7w">
                                <ref role="3cqZAo" node="WXWDRA54ID" resolve="index" />
                              </node>
                              <node concept="2OqwBi" id="WXWDRA565P" role="3uHU7B">
                                <node concept="37vLTw" id="WXWDRA565Q" role="2Oq$k0">
                                  <ref role="3cqZAo" node="WXWDRA565S" resolve="it" />
                                </node>
                                <node concept="2bSWHS" id="WXWDRA565R" role="2OqNvi" />
                              </node>
                            </node>
                          </node>
                        </node>
                        <node concept="Rh6nW" id="WXWDRA565S" role="1bW2Oz">
                          <property role="TrG5h" value="it" />
                          <node concept="2jxLKc" id="WXWDRA565T" role="1tU5fm" />
                        </node>
                      </node>
                    </node>
                  </node>
                </node>
              </node>
            </node>
            <node concept="3cpWs6" id="WXWDRA5uMa" role="3cqZAp">
              <node concept="2ShNRf" id="WXWDRA5vc6" role="3cqZAk">
                <node concept="1pGfFk" id="WXWDRA5wBe" role="2ShVmc">
                  <ref role="37wK5l" to="6xgk:6Kqn2fZxA8P" resolve="HidingByNameScope" />
                  <node concept="35c_gC" id="WXWDRA5wRb" role="37wK5m">
                    <ref role="35c_gD" to="owy0:2XwB4MkeNKy" resolve="BVariableDeclaration" />
                  </node>
                  <node concept="37vLTw" id="WXWDRA5xmJ" role="37wK5m">
                    <ref role="3cqZAo" node="WXWDRA54I_" resolve="kind" />
                  </node>
                  <node concept="37vLTw" id="WXWDRA5xHR" role="37wK5m">
                    <ref role="3cqZAo" node="WXWDRA5l6L" resolve="variables" />
                  </node>
                  <node concept="iy90A" id="WXWDRA5xSU" role="37wK5m" />
                </node>
              </node>
            </node>
          </node>
          <node concept="2OqwBi" id="WXWDRA565V" role="3clFbw">
            <node concept="37vLTw" id="WXWDRA565W" role="2Oq$k0">
              <ref role="3cqZAo" node="WXWDRA54I_" resolve="kind" />
            </node>
            <node concept="2Zo12i" id="WXWDRA565X" role="2OqNvi">
              <node concept="chp4Y" id="WXWDRA565Y" role="2Zo12j">
                <ref role="cht4Q" to="owy0:2XwB4MkeNKy" resolve="BVariableDeclaration" />
              </node>
            </node>
          </node>
        </node>
        <node concept="3cpWs6" id="WXWDRA56uG" role="3cqZAp">
          <node concept="2OqwBi" id="WXWDRA54IJ" role="3cqZAk">
            <node concept="13iAh5" id="WXWDRA54IK" role="2Oq$k0">
              <ref role="3eA5LN" to="tpck:3fifI_xCcJN" resolve="ScopeProvider" />
            </node>
            <node concept="2qgKlT" id="WXWDRA54IL" role="2OqNvi">
              <ref role="37wK5l" to="tpcu:52_Geb4QFgX" resolve="getScope" />
              <node concept="37vLTw" id="WXWDRA54IG" role="37wK5m">
                <ref role="3cqZAo" node="WXWDRA54I_" resolve="kind" />
              </node>
              <node concept="37vLTw" id="WXWDRA54IH" role="37wK5m">
                <ref role="3cqZAo" node="WXWDRA54IB" resolve="link" />
              </node>
              <node concept="37vLTw" id="WXWDRA54II" role="37wK5m">
                <ref role="3cqZAo" node="WXWDRA54ID" resolve="index" />
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="37vLTG" id="WXWDRA54I_" role="3clF46">
        <property role="TrG5h" value="kind" />
        <node concept="3bZ5Sz" id="WXWDRA54IA" role="1tU5fm" />
      </node>
      <node concept="37vLTG" id="WXWDRA54IB" role="3clF46">
        <property role="TrG5h" value="link" />
        <node concept="3uibUv" id="WXWDRA54IC" role="1tU5fm">
          <ref role="3uigEE" to="c17a:~SContainmentLink" resolve="SContainmentLink" />
        </node>
      </node>
      <node concept="37vLTG" id="WXWDRA54ID" role="3clF46">
        <property role="TrG5h" value="index" />
        <node concept="10Oyi0" id="WXWDRA54IE" role="1tU5fm" />
      </node>
      <node concept="3uibUv" id="WXWDRA54IF" role="3clF45">
        <ref role="3uigEE" to="o8zo:3fifI_xCtN$" resolve="Scope" />
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="7VBD6KRUUDi">
    <ref role="13h7C2" to="owy0:2XwB4MkehQk" resolve="BWorkbook" />
    <node concept="13hLZK" id="7VBD6KRUUDj" role="13h7CW">
      <node concept="3clFbS" id="7VBD6KRUUDk" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="7VBD6KRUUDt" role="13h7CS">
      <property role="TrG5h" value="getStatements" />
      <ref role="13i0hy" node="7VBD6KRUUC0" resolve="getStatements" />
      <node concept="3Tm1VV" id="7VBD6KRUUDu" role="1B3o_S" />
      <node concept="3clFbS" id="7VBD6KRUUDy" role="3clF47">
        <node concept="3clFbF" id="7VBD6KRUUDN" role="3cqZAp">
          <node concept="2OqwBi" id="7VBD6KRUUP$" role="3clFbG">
            <node concept="13iPFW" id="7VBD6KRUUDM" role="2Oq$k0" />
            <node concept="3Tsc0h" id="7VBD6KRUV2c" role="2OqNvi">
              <ref role="3TtcxE" to="owy0:2XwB4Mke_Pd" resolve="statements" />
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="7VBD6KRUUDz" role="3clF45">
        <node concept="3Tqbb2" id="7VBD6KRUUD$" role="A3Ik2">
          <ref role="ehGHo" to="owy0:2XwB4Mke_Pc" resolve="BStatement" />
        </node>
      </node>
    </node>
  </node>
  <node concept="13h7C7" id="58rIaj6RD4m">
    <property role="3GE5qa" value="stmt" />
    <ref role="13h7C2" to="owy0:7VBD6KRVfhP" resolve="BIfStatement" />
    <node concept="13hLZK" id="58rIaj6RD4n" role="13h7CW">
      <node concept="3clFbS" id="58rIaj6RD4o" role="2VODD2" />
    </node>
    <node concept="13i0hz" id="58rIaj6RD4x" role="13h7CS">
      <property role="TrG5h" value="getStatements" />
      <ref role="13i0hy" node="7VBD6KRUUC0" resolve="getStatements" />
      <node concept="3Tm1VV" id="58rIaj6RD4y" role="1B3o_S" />
      <node concept="3clFbS" id="58rIaj6RD4A" role="3clF47">
        <node concept="3clFbF" id="58rIaj6RD4R" role="3cqZAp">
          <node concept="2OqwBi" id="58rIaj6REPT" role="3clFbG">
            <node concept="2OqwBi" id="58rIaj6RDgC" role="2Oq$k0">
              <node concept="13iPFW" id="58rIaj6RD4Q" role="2Oq$k0" />
              <node concept="3Tsc0h" id="58rIaj6RDtg" role="2OqNvi">
                <ref role="3TtcxE" to="owy0:58rIaj6NNbo" resolve="then" />
              </node>
            </node>
            <node concept="3QWeyG" id="58rIaj6RGbs" role="2OqNvi">
              <node concept="2OqwBi" id="58rIaj6RGsv" role="576Qk">
                <node concept="13iPFW" id="58rIaj6RGfw" role="2Oq$k0" />
                <node concept="3Tsc0h" id="58rIaj6RGEG" role="2OqNvi">
                  <ref role="3TtcxE" to="owy0:58rIaj6NNbr" resolve="else" />
                </node>
              </node>
            </node>
          </node>
        </node>
      </node>
      <node concept="A3Dl8" id="58rIaj6RD4B" role="3clF45">
        <node concept="3Tqbb2" id="58rIaj6RD4C" role="A3Ik2">
          <ref role="ehGHo" to="owy0:2XwB4Mke_Pc" resolve="BStatement" />
        </node>
      </node>
    </node>
  </node>
</model>

