// Shader created with Shader Forge v1.40 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.40;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,cpap:True,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33947,y:32924,varname:node_3138,prsc:2|emission-943-OUT;n:type:ShaderForge.SFN_Tex2d,id:804,x:32040,y:32799,varname:node_804,prsc:2,tex:2ff5eabbce7aaff4187a4ad3d3396bb5,ntxv:0,isnm:False|UVIN-285-UVOUT,TEX-1757-TEX;n:type:ShaderForge.SFN_Tex2d,id:8786,x:32040,y:32980,varname:_node_804_copy,prsc:2,tex:2ff5eabbce7aaff4187a4ad3d3396bb5,ntxv:0,isnm:False|UVIN-4581-UVOUT,TEX-1757-TEX;n:type:ShaderForge.SFN_Tex2d,id:8608,x:32105,y:33170,varname:_node_804_copy_copy,prsc:2,tex:2ff5eabbce7aaff4187a4ad3d3396bb5,ntxv:0,isnm:False|UVIN-1361-UVOUT,TEX-1757-TEX;n:type:ShaderForge.SFN_Divide,id:1674,x:32457,y:33147,varname:node_1674,prsc:2|A-8608-RGB,B-9130-OUT;n:type:ShaderForge.SFN_Vector1,id:9130,x:32212,y:33112,varname:node_9130,prsc:2,v1:4;n:type:ShaderForge.SFN_Divide,id:9573,x:32457,y:32982,varname:node_9573,prsc:2|A-8786-RGB,B-9130-OUT;n:type:ShaderForge.SFN_Divide,id:8365,x:32457,y:32819,varname:node_8365,prsc:2|A-804-RGB,B-9130-OUT;n:type:ShaderForge.SFN_Tex2dAsset,id:1757,x:31691,y:33018,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_1757,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2ff5eabbce7aaff4187a4ad3d3396bb5,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:3746,x:32691,y:32963,varname:node_3746,prsc:2|A-8365-OUT,B-9573-OUT,C-1674-OUT,D-7215-OUT;n:type:ShaderForge.SFN_Panner,id:285,x:31503,y:33253,varname:node_285,prsc:2,spu:-0.1,spv:0.44|UVIN-8083-UVOUT;n:type:ShaderForge.SFN_Panner,id:4581,x:31702,y:33253,varname:node_4581,prsc:2,spu:0.77,spv:0.6|UVIN-8083-UVOUT;n:type:ShaderForge.SFN_Panner,id:1361,x:31893,y:33253,varname:node_1361,prsc:2,spu:-0.8,spv:-0.123|UVIN-8083-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8083,x:31318,y:33437,varname:node_8083,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Power,id:5914,x:32877,y:32973,varname:node_5914,prsc:2|VAL-3746-OUT,EXP-9130-OUT;n:type:ShaderForge.SFN_Divide,id:7215,x:32457,y:33360,varname:node_7215,prsc:2|A-9440-RGB,B-9130-OUT;n:type:ShaderForge.SFN_Panner,id:1672,x:31893,y:33458,varname:node_1672,prsc:2,spu:0.21,spv:-1|UVIN-8083-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6237,x:33095,y:33022,varname:node_6237,prsc:2|A-5914-OUT,B-7404-OUT;n:type:ShaderForge.SFN_Vector1,id:7404,x:32877,y:33138,varname:node_7404,prsc:2,v1:4;n:type:ShaderForge.SFN_Fresnel,id:8265,x:33111,y:33211,varname:node_8265,prsc:2|EXP-7404-OUT;n:type:ShaderForge.SFN_Add,id:3461,x:33347,y:33081,varname:node_3461,prsc:2|A-6237-OUT,B-4968-OUT;n:type:ShaderForge.SFN_Vector1,id:4427,x:33095,y:33368,varname:node_4427,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:4968,x:33292,y:33260,varname:node_4968,prsc:2|A-8265-OUT,B-4427-OUT;n:type:ShaderForge.SFN_Tex2d,id:9440,x:32104,y:33324,varname:node_9440,prsc:2,tex:2ff5eabbce7aaff4187a4ad3d3396bb5,ntxv:0,isnm:False|UVIN-1672-UVOUT,TEX-1757-TEX;n:type:ShaderForge.SFN_Multiply,id:6798,x:33626,y:33099,varname:node_6798,prsc:2|A-3461-OUT,B-4694-RGB;n:type:ShaderForge.SFN_Multiply,id:943,x:33750,y:33240,varname:node_943,prsc:2|A-6798-OUT,B-4694-A;n:type:ShaderForge.SFN_VertexColor,id:4694,x:33448,y:33260,varname:node_4694,prsc:2;proporder:1757;pass:END;sub:END;*/

Shader "Shader Forge/MeshEffectFresnel" {
    Properties {
        _Texture ("Texture", 2D) = "white" {}
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma target 3.0
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 node_3691 = _Time;
                float2 node_285 = (i.uv0+node_3691.g*float2(-0.1,0.44));
                float4 node_804 = tex2D(_Texture,TRANSFORM_TEX(node_285, _Texture));
                float node_9130 = 4.0;
                float2 node_4581 = (i.uv0+node_3691.g*float2(0.77,0.6));
                float4 _node_804_copy = tex2D(_Texture,TRANSFORM_TEX(node_4581, _Texture));
                float2 node_1361 = (i.uv0+node_3691.g*float2(-0.8,-0.123));
                float4 _node_804_copy_copy = tex2D(_Texture,TRANSFORM_TEX(node_1361, _Texture));
                float2 node_1672 = (i.uv0+node_3691.g*float2(0.21,-1));
                float4 node_9440 = tex2D(_Texture,TRANSFORM_TEX(node_1672, _Texture));
                float node_7404 = 4.0;
                float3 emissive = ((((pow(((node_804.rgb/node_9130)+(_node_804_copy.rgb/node_9130)+(_node_804_copy_copy.rgb/node_9130)+(node_9440.rgb/node_9130)),node_9130)*node_7404)+(pow(1.0-max(0,dot(normalDirection, viewDirection)),node_7404)*1.0))*i.vertexColor.rgb)*i.vertexColor.a);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
