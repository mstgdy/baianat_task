PGDMP                         y            twitter    13.3    13.3     ?           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            ?           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            ?           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    16394    twitter    DATABASE     k   CREATE DATABASE twitter WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'English_United States.1252';
    DROP DATABASE twitter;
                postgres    false            q           1247    16407    enum_Users_gender    TYPE     M   CREATE TYPE public."enum_Users_gender" AS ENUM (
    'male',
    'female'
);
 &   DROP TYPE public."enum_Users_gender";
       public          postgres    false            ?            1259    16610    Follows    TABLE     ?   CREATE TABLE public."Follows" (
    id character varying(255) NOT NULL,
    follower character varying(255),
    followed character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Follows";
       public         heap    postgres    false            ?            1259    16629    Tweets    TABLE       CREATE TABLE public."Tweets" (
    id character varying(255) NOT NULL,
    content character varying(255),
    "userId" character varying(255),
    "like" integer,
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Tweets";
       public         heap    postgres    false            ?            1259    16589    Users    TABLE       CREATE TABLE public."Users" (
    id character varying(255) NOT NULL,
    username character varying(255),
    email character varying(255),
    password character varying(255),
    "createdAt" timestamp with time zone NOT NULL,
    "updatedAt" timestamp with time zone NOT NULL
);
    DROP TABLE public."Users";
       public         heap    postgres    false            ?          0    16610    Follows 
   TABLE DATA           U   COPY public."Follows" (id, follower, followed, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    201   ?       ?          0    16629    Tweets 
   TABLE DATA           [   COPY public."Tweets" (id, content, "userId", "like", "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    202   c       ?          0    16589    Users 
   TABLE DATA           Z   COPY public."Users" (id, username, email, password, "createdAt", "updatedAt") FROM stdin;
    public          postgres    false    200          1           2606    16617    Follows Follows_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public."Follows"
    ADD CONSTRAINT "Follows_pkey" PRIMARY KEY (id);
 B   ALTER TABLE ONLY public."Follows" DROP CONSTRAINT "Follows_pkey";
       public            postgres    false    201            3           2606    16636    Tweets Tweets_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public."Tweets"
    ADD CONSTRAINT "Tweets_pkey" PRIMARY KEY (id);
 @   ALTER TABLE ONLY public."Tweets" DROP CONSTRAINT "Tweets_pkey";
       public            postgres    false    202            /           2606    16596    Users Users_pkey 
   CONSTRAINT     R   ALTER TABLE ONLY public."Users"
    ADD CONSTRAINT "Users_pkey" PRIMARY KEY (id);
 >   ALTER TABLE ONLY public."Users" DROP CONSTRAINT "Users_pkey";
       public            postgres    false    200            5           2606    16623    Follows Follows_followed_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Follows"
    ADD CONSTRAINT "Follows_followed_fkey" FOREIGN KEY (followed) REFERENCES public."Users"(id);
 K   ALTER TABLE ONLY public."Follows" DROP CONSTRAINT "Follows_followed_fkey";
       public          postgres    false    200    201    2863            4           2606    16618    Follows Follows_follower_fkey    FK CONSTRAINT     ?   ALTER TABLE ONLY public."Follows"
    ADD CONSTRAINT "Follows_follower_fkey" FOREIGN KEY (follower) REFERENCES public."Users"(id);
 K   ALTER TABLE ONLY public."Follows" DROP CONSTRAINT "Follows_follower_fkey";
       public          postgres    false    200    201    2863            6           2606    16637    Tweets Tweets_userId_fkey    FK CONSTRAINT        ALTER TABLE ONLY public."Tweets"
    ADD CONSTRAINT "Tweets_userId_fkey" FOREIGN KEY ("userId") REFERENCES public."Users"(id);
 G   ALTER TABLE ONLY public."Tweets" DROP CONSTRAINT "Tweets_userId_fkey";
       public          postgres    false    202    2863    200            ?   u   x?}̱1 ?ڞ"}?0`?gI?1??(?>?N????@?&?
u.2??[??%?i?k?'9l??4f̡i?,???T1wAR?U箁?? ?^D???v??????{?;?'?      ?   ?   x???;?@ ?:{???#???'??4?c??D"!n?t?<Nl䊀?)?@uX梾??Ω;?q??[|wyF_?????;?乪?4??1Le1P?|6o???ӱcd?s$%?	??ȿO?6?<A!y۔??&?Vi?e?Lo??\?K????p?C/>?P?      ?   ?   x?}?=
?0@?9>E?"#ɿ???Yd?.????S
-]?>$?b?
?R?ce?4UP?Vj??C??{Wd?????"?????
??? p?.![???2???|?>Y)?????$>??n?49??r?}??>ә>.3Zc??E>\     