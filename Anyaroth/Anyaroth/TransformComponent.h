#pragma once
#include "Vector2D.h"

class TransformComponent 
{
	private:
		Vector2D position = Vector2D(0, 0);
		Vector2D size = Vector2D(16, 16);
		Vector2D scale = Vector2D(1, 1);
		Vector2D anchor = Vector2D(0, 0);

		double rotation = 0;

	public:
		TransformComponent(Vector2D position, Vector2D size, Vector2D scale = Vector2D(1, 1), Vector2D anchor = Vector2D(0, 0), double rotation = 0) :
			position(position), size(size), scale(scale), anchor(anchor), rotation(rotation) {}
		~TransformComponent() {}

		Vector2D getAnchor();
		Vector2D getPosition();
		Vector2D getSize();
		Vector2D getScale();
		double getRotation();

		void setPosition(double x, double y);
		void setScale(double x, double y);
		void setScale(double a); void setAnchor(double x, double y);
		void setAnchor(double a);
		void setRotation(double rot);
};

